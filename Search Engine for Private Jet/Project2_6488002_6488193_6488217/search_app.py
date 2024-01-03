from flask import Flask, request, render_template
from elasticsearch import Elasticsearch
import math

ELASTIC_PASSWORD = "kafair072434"
es = Elasticsearch("https://localhost:9200", http_auth=("elastic", ELASTIC_PASSWORD), verify_certs=False)
app = Flask(__name__)

def highlight(text, field):
    # Replace the matched words with a highlighted version
    for keyword in request.args.get('keyword').split():
        text = text.replace(keyword, f'<span class="highlight">{keyword}</span>')
    return text

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/search')
def search():
    page_size = 10
    keyword = request.args.get('keyword')
    if request.args.get('page'):
        page_no = int(request.args.get('page'))
    else:
        page_no = 1

    # Split the input query into individual words
    keywords = keyword.split()

    # Build a list of wildcard queries for each word
    wildcard_queries = [{'wildcard': {'name': f'*{kw.lower()}*'}} for kw in keywords] + \
                       [{'wildcard': {'description': f'*{kw.lower()}*'}} for kw in keywords] 

    # Include a match query for exact matches
    match_queries = [
        {'match': {'name': {'query': keyword, 'operator': 'and'}}},
        {'match': {'description': {'query': keyword, 'operator': 'and'}}}
        
    ]

    body = {
        'size': page_size,
        'from': page_size * (page_no - 1),
        'query': {
            'bool': {
                'should': wildcard_queries + match_queries,
                'minimum_should_match': 1
            }
        },
        'highlight': {
            'fields': {
                'name': {},
                'description': {}
            }
        }
    }

    res = es.search(index='planedata', body=body)
    hits = [{'name': doc['_source']['name'], 'description': doc['_source']['description'], 'created': doc['_source']['created'], 'Link': doc['_source']['link']} for doc in res['hits']['hits']]
    page_total = math.ceil(res['hits']['total']['value'] / page_size)
    return render_template('search.html', keyword=keyword, hits=hits, page_no=page_no, page_total=page_total, highlight=highlight)

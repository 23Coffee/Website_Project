import { Container, Row, Col} from "react-bootstrap"
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import react from "../assets/img/React-icon.svg.png";
import flutter from "../assets/img/Flutter.png";
import Java from "../assets/img/java.png";
import js from "../assets/img/js.png";
import css from "../assets/img/css.png";
import html from "../assets/img/html.png";
import powerapp from "../assets/img/powerapp.png";
import PowerAutomate from "../assets/img/PowerAutomate.png";
import colorSharp from "../assets/img/color-sharp.png"

export const Skills = () =>{
    const responsive = {
        superLargeDesktop: {
          
          breakpoint: { max: 4000, min: 3000 },
          items: 5
        },
        desktop: {
          breakpoint: { max: 3000, min: 1024 },
          items: 3
        },
        tablet: {
          breakpoint: { max: 1024, min: 464 },
          items: 2
        },
        mobile: {
          breakpoint: { max: 464, min: 0 },
          items: 1
        }
      };
      return(
        <section className="skill" id="skills">
            <Container>
                <Row>
                    <Col>
                    <div className="skill-bx">
                        <h2>
                            Skills
                        </h2>
                        <p> </p>
                        <Carousel responsive={responsive} infinite={true} className="skill-slider">
                            <div className="item">
                                <img src={react} alt = "Image" style={{ width: '180px', height: '150px' }} />
                                <h5>React</h5>
                            </div>
                            <div className="item">
                                <img src={flutter} alt = "Image" style={{ width: '140px', height: '150px' }}/>
                                <h5>Flutter</h5>
                            </div>
                            <div className="item">
                                <img src={powerapp} alt = "Image" style={{ width: '160px', height: '150px' }}/>
                                <h5>PowerApp</h5>    
                            </div>
                            <div className="item">
                                <img src={PowerAutomate} alt = "Image" style={{ width: '160px', height: '150px' }}/>
                                <h5>PowerAutomate</h5> 
                            </div>
                            <div className="item">
                                <img src={Java} alt = "Image" style={{ width: '160px', height: '150px' }}/>
                                <h5>Java</h5> 
                            </div>
                            <div className="item">
                                <img src={html} alt = "Image" style={{ width: '160px', height: '150px' }}/>
                                <h5>HTML</h5> 
                            </div>
                            <div className="item">
                                <img src={css} alt = "Image" style={{ width: '160px', height: '150px' }}/>
                                <h5>CSS</h5>
                                 
                            </div>
                            <div className="item">
                                <img src={js} alt = "Image" style={{ width: '160px', height: '150px' }}/>
                                <h5>Javascript</h5> 
                            </div>
                        </Carousel>
                    </div>
                    </Col>
                </Row>
            </Container>
            
        </section>
      )
}
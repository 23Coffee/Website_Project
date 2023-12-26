
import { ProjectCard } from "./ProjectCard";
import { Container, Row, Col, Tab, Nav} from "react-bootstrap"
import colorSharp2 from "../assets/img/color-sharp2.png"
import Portfolio from "../assets/img/Portfolio2.PNG";
import jobcenter from "../assets/img/jobcenter.PNG";
import nokair from "../assets/img/Nokair.PNG";
import exercise from "../assets/img/Exercise.PNG";
import Covid from "../assets/img/Covid.PNG";
import Game from "../assets/img/Game.PNG";
import projImg1 from "../assets/img/project-img1.png";
import projImg2 from "../assets/img/project-img2.png";
import projImg3 from "../assets/img/project-img3.png";
import TrackVisibility from 'react-on-screen';


export const Projects = () => {

    const projects = [
      {
        title: "Nok Airlines Internship",
        description: (
        <span>
        CRM application that can import .csv file into system <br/> used to manage the irregular flight and refund processes <br/><br/> Using Microsoft Power App, Power Automate, and Sharepoint List
        </span> ),
        imgUrl: nokair,
      },
      {
        title: 
        
        "Daily Exercise Application UI",
        description: (
          <span>
          A health and fitness application designed to help users<br/> stay active and maintain a healthy lifestyle <br/><br/> Using Flutter and Dart
          </span> ),
        imgUrl: exercise,
      },
      {
        title: "Covid-19 Application UI",
        description: (
          <span>
          Providing accurate information about Covid-19, <br/>personalized guidance, and access to essential resources, <br/>we aim to contribute to a healthier, safer world.<br/><br/> Using Flutter and Dart
          </span> ),
        imgUrl: Covid,
      },
      {
        title: "Game Store website for selling games",
        description: (
          <span>
          Our game store will be a haven for gamers, <br/>offering a wide array of the latest and classic video games, <br/>gaming consoles, accessories, and merchandise.<br/><br/> Using Typescript and Node.js
          </span> ),
        imgUrl: Game,
      },
      {
        title: "Job Center System Application",
        description: (
          <span>
          This comprehensive platform aims to provide <br/>a user-friendly interface for individuals seeking <br/>employment opportunities while offering robust features <br/>for employers to connect with potential candidates.<br/><br/> Using Microsoft Power App, Power Automate, and Sharepoint List
          </span> ),
        imgUrl: jobcenter,
      },
      {
        title: "Portfolio Website",
        description: (
          <span>
          The website aims to provide a visually appealing <br/>and user-friendly platform for visitors to learn more about <br/>the individual's expertise, projects, and experiences.<br/><br/>Using React.js
          </span> ),
        imgUrl: Portfolio,
      },
    ];
  
    return (
      <section className="project" id="projects">
        <Container>
          <Row>
            <Col size={12}>
              <TrackVisibility>
                {({ isVisible }) =>
                <div className={isVisible ? "animate__animated animate__fadeIn": ""}>
                  <h2>Projects</h2>
                  <p>Welcome to my portfolio, where innovation meets creativity! Here, I showcase a diverse array of projects that reflect my passion for technology and problem solving. Each project is a journey, an exploration into the realms of development, design, and functionality.</p>
                  <Tab.Container id="projects-tabs" defaultActiveKey="first">
                    <Nav variant="pills" className="nav-pills mb-5 justify-content-center align-items-center" id="pills-tab">
                     
                    </Nav>
                    <Tab.Content id="slideInUp" className={isVisible ? "animate__animated animate__slideInUp" : ""}>
                      <Tab.Pane eventKey="first">
                        <Row>
                          {
                            projects.map((project, index) => {
                              return (
                                <ProjectCard
                                  key={index}
                                  {...project}
                                  />
                              )
                            })
                          }
                        </Row>
                      </Tab.Pane>
                      
                    </Tab.Content>
                  </Tab.Container>
                </div>}
              </TrackVisibility>
            </Col>
          </Row>
        </Container>
        <img className="background-image-right" src={colorSharp2}></img>
      </section>
    )
  }
  
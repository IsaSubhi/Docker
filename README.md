# Welcome To My Docker Repository<br/>
**This repository contains a collection of files covering various Docker functionalities:**<br>
- Best practices for writing efficient Dockerfiles<br>
- Building tagging and pushing Docker images,<br> 
- Setting up custom environments using Dockerfiles,<br/> 
- Exposing and mapping ports for containerized services<br> 
- Automating build pipelines with Jenkins in Docker containers<br> 
- Utilizing Docker plugins in Jenkins for enhanced workflows<br>
- Integrating Docker in development workflow<br>
- Automating builds and publishing images to Docker Hub<br>
- Managing and distributing images through Docker Hub<br>

## [Docker Project](./Docker_Project):
### Overview:
A Jenkinsfile that runs by a GitHub hook trigger creates a docker image from a Dockerfile and run it with a custom name.<br> 
The contaciner is created after checking that there is no conflecting container with the same name.<br>
The container runs for 10 seconds and shuts down.<br>
After 20 seconds it checks if container is still running, if so it prints that the test faild and kills the container, if the container is not running it prints that the container succeeded.

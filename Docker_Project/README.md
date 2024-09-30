# Docker Project:
### Overview:
A [Jenkinsfile](Docker_Project/Jenkinsfile) that runs by a GitHub hook trigger creates a docker image from a simple [Dockerfile](Docker_Project/Dockerfile) and run it with a custom name.<br> 
The container is created after checking that there is no conflicting container with the same name.
The container runs for 10 seconds and shuts down.
After 20 seconds it checks if container is still running, if so it prints that the test failed and kills the container, if the container is not running it prints that the container succeeded.
<br>
[script.sh](Docker_Project/script.sh) can be used manually instead of runing the Jenkinsfile

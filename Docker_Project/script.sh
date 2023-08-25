#instead of using a Jenkinsfile, run the script in the Pipeline

chmod 777 Dockerfile
DOCKER_NAME='docker_project'
echo "Building Image....."
docker build -t ${DOCKER_NAME} .
echo "Checking Conflecting Containers"
docker ps -a | grep ${DOCKER_NAME} && docker rm -f ${DOCKER_NAME} && echo "Removed Container" || echo "No Conflecting Containers Detected"
echo "Creating Container....."
docker run -d --name ${DOCKER_NAME} ${DOCKER_NAME}
sleep 20
echo "Checking Container Status....."
docker ps | grep ${DOCKER_NAME} && docker kill ${DOCKER_NAME} && echo "Test failed"  || echo "Test run success"
echo "Exiting..."

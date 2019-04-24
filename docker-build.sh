#/bin/bash

# docker-runner-script
mkdir service-runner
mkdir service-runner/config
cp -r ./docker-compose.yaml ./service-runner/docker-compose.yaml
cp -r ./docker-run.sh ./service-runner/docker-run.sh
cp -r ./tomcat ./service-runner/config/tomcat
cp -r ./source/WEB-INF/hosts ./service-runner/config/hosts
cp -r ./source/WEB-INF/classes/resources/props/globals.properties ./service-runner/config/globals.properties

#ex) docker rmi test-service:0.1
docker rmi {docker account}/{image name}:0.1
#docker build -t test-service:0.1 .
docker build -t {docker account}/{image name}:0.1 .

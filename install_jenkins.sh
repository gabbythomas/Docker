docker pull jenkins/jenkins

docker kill container jenkins
docker run -d --rm -v jenkins_home:/var/jenkins_home \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -v $(which docker):$(which docker) \
           --group-add $(stat -c '%g' /var/run/docker.sock) \
           -p 0.0.0.0:8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins


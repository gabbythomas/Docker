# If docker isn't setup to be run as non-root user,
# this script must be run with sudo.

docker container kill jenkins

docker build -f jenkins-with-build-tools.dockerfile -t jenkins .

docker run -d --rm -v jenkins_home:/var/jenkins_home \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -v $(which docker):$(which docker) \
           --group-add $(stat -c '%g' /var/run/docker.sock) \
           -p 0.0.0.0:8080:8080 -p 50000:50000 --name jenkins jenkins


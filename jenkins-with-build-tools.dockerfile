FROM jenkins/jenkins

USER root

RUN apt update
RUN apt-get install -y maven ansible

USER jenkins

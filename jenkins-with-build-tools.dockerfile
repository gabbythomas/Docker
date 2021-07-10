FROM jenkins/jenkins

USER root

RUN apt update
RUN apt-get install -y ansible maven python3-pip

# Ansible install will grab Python 3 but need to override system default.
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 3

USER jenkins

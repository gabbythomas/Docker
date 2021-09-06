FROM jenkins/jenkins

USER root

RUN apt update
RUN apt-get install -y maven python3 python3-pip sudo

# Ansible install will grab Python 3 but need to override system default.
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 3

# Install latest ansible, with AWS EC2 plugin and dependencies.
RUN sudo python -m pip install ansible boto boto3
RUN ansible-galaxy collection install amazon.aws

USER jenkins

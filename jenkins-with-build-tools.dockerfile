FROM jenkins/jenkins

USER root

RUN apt update
RUN apt-get install -y maven python3.7 python3-pip sudo

# Ansible install will grab Python 3 but need to override system default.
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 3

# Install latest ansible, with AWS EC2 plugin.
RUN sudo python -m pip install ansible
RUN ansible-galaxy collection install amazon.aws

USER jenkins

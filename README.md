# jenkins

## Prerequisites
* Docker

## Install Jenkins Server
1. Clone this repository
1. `cd jenkins`
1. `sudo ./install_jenkins.sh`
1. Verify Jenkins server can be reached at `http:<JenkinsServerIp>:8080`
1. To retrieve initial password for unlocking Jenkins
    1. `sudo docker exec -it bash`
    1. `cat /var/jenkins_home/secrets/initialAdminPassword`
1. Install selected/suggested plugins
1. Create first admin user
1. Accept default install configuration
1. Get to Jenkins welcome screen - now you're ready to setup custom jobs, plugins, settings, etc

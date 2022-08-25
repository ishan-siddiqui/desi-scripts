#!/bin/sh
sudo yum update -y
# Installing Java-8
sudo yum install java-1.8.0
sudo yum remove java-1.7.0-openjdk
# Add jeknins repo
echo "Adding Jenkins Repo.."
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
# Import the key file
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
# Install Jenkins
sudo yum install jenkins -y
# Start the Jenkins service
sudo service jenkins start

sudo systemctl status jekins

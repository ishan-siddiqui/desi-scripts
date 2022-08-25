#!/bin/sh
sudo yum update -y
# check Java, install - 
java -version
sudo amazon-linux-extras install java-openjdk11 -y
sudo /usr/sbin/alternatives --config java
# get repo..
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum upgrade

sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins



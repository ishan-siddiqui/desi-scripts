#!/bin/sh
sudo yum update -y
# check Java, install - 
java -version
sudo yum install java-1.8.0
sudo /usr/sbin/alternatives --config java
# get repo..
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum install jenkins
sudo service jenkins start



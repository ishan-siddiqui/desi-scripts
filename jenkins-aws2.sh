#!/bin/sh
sudo yum update -y

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo yum  -y

sudo yum install jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins


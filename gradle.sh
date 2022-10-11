#!/bin/sh

gradle_version=”7.5.1″

#Your Custom Installation Path

install_target_path=”/opt/gradle”
sudo wget -N https://services.gradle.org/distributions/gradle-${gradle_version}-bin.zip
sudo mkdir /opt/gradle
ls /opt/gradle
# sudo unzip gradle-${gradle_version}-all.zip
# ls /opt/gradle/gradle-7.5.1

# sudo chown -R ec2-user:ec2-user ${install_target_path}
# export PATH=$PATH:/opt/gradle/gradle-7.5.1/bin

# check installation
gradle -v
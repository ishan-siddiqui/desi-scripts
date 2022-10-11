#!/bin/sh
sudo mkdir /opt/gradle
wget -c https://services.gradle.org/distributions/gradle-7.5.1-bin.zip
sudo tar xvf -d /opt/gradle/gradle-7.5.1-bin.zip
export PATH=$PATH:/opt/gradle/gradle-7.5.1/bin
# check installation
gradle -v
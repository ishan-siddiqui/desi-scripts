### I assume you run the commands as root
gradle_version=2.6
wget -c http://services.gradle.org/distributions/gradle-${gradle_version}-all.zip
unzip  gradle-${gradle_version}-all.zip -d /opt
ln -s /opt/gradle-${gradle_version} /opt/gradle
printf "export GRADLE_HOME=/opt/gradle\nexport PATH=\$PATH:\$GRADLE_HOME/bin\n" > /etc/profile.d/gradle.sh
source /etc/profile.d/gradle.sh
# check installation
gradle -v
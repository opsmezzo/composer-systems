#!/bin/bash

#
# Install jdk
#
apt-get -y install openjdk-7-jre-headless rubygems

#
# Get latest logstash binary
# Fetched from: http://semicomplete.com/files/logstash/logstash-1.1.5-monolithic.jar
#
cp -f ../files/logstash-1.1.5-monolithic.jar /opt/
pushd /opt
ln -sf logstash-1.1.5-monolithic.jar logstash.jar
popd

#
# Add the logstash user.
#
adduser --system --no-create-home --disabled-password --disabled-login --ingroup adm logstash
mkdir -p /var/log/logstash 
mkdir -p /var/lib/logstash 
chown logstash:adm /var/log/logstash 
chown logstash:adm /var/lib/logstash 

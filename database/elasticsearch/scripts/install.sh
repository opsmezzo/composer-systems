#!/bin/bash

#
# Install jdk
#
apt-get -y install openjdk-7-jre-headless

#
# Install elasticsearch
# Fetched from: https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-0.19.11.deb
#
dpkg -i ../files/elasticsearch-0.19.11.deb

#
# Install all the elasticsearch plugins
# /usr/share/elasticsearch/bin/plugin -install elasticsearch/elasticsearch-river-rabbitmq/1.4.0
# /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head
# /usr/share/elasticsearch/bin/plugin -install lukas-vlcek/bigdesk
#
install -d -m 0755 /usr/share/elasticsearch/plugins/
tar zxvf ../files/elasticsearch-plugins.tgz -C /usr/share/elasticsearch/plugins/
#!/bin/bash
set -e
set -u
set -x

# Install rubygems
apt-get -y install rubygems

#
# Install kibana
#
tar zxvf ../files/kibana.tgz -C /opt/

#
# Install kibana upstart config
#
adduser --system --no-create-home --disabled-password --disabled-login --ingroup adm kibana
mkdir -p /var/log/kibana 
chown kibana:adm /var/log/kibana 
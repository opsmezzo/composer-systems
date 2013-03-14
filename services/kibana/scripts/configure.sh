#!/bin/bash

set -e
set -u
set -x

#
# Install logstash kibana and upstart config
#
cp -f ../templates/kibana.rb /opt/kibana/KibanaConfig.rb
cp -f ../templates/upstart-kibana.conf /etc/init/kibana.conf
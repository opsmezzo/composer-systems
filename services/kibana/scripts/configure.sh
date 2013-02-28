#!/bin/bash

set -e
set -u
set -x

#
# Install logstash upstart config and create logstash user
#
cp -f ../templates/kibana.rb.template /opt/kibana/KibanaConfig.rb
cp -f ../templates/upstart-logstash-agent.conf /etc/init/logstash-agent.conf

# Install kibana upstart config and create kibana user
cp -f ../templates/upstart-kibana.conf /etc/init/kibana.conf

# Start the Kibana server
#cd /opt/kibana; nohup ruby -r bundle/bundler/setup.rb kibana.rb < /dev/null >> /var/log/kibana.log 2>&1 &
service kibana restart


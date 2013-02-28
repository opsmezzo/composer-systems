#!/bin/bash

#
# Move logstash configuration into place
#
cp ../templates/logstash.conf /etc/logstash.conf
chmod 644 /etc/logstash.conf

#
# Install logstash upstart config
#
cp -f ../templates/upstart-logstash-agent.conf /etc/init/logstash-agent.conf
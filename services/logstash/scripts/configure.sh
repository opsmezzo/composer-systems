#!/bin/bash

#
# Install logstash upstart config
#
cp -f ../templates/upstart-logstash.conf /etc/init/logstash-agent.conf
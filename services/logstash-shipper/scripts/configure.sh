#!/bin/bash

#
# Move logstash configuration into place
#
cp ../templates/logstash.conf /etc/logstash.conf
chmod 644 /etc/logstash.conf

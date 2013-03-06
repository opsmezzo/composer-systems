#!/bin/bash

#
# Copy the elasticsearh config into place
#
mkdir -p /etc/elasticsearch
cp -f ../templates/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
chmod 644 /etc/elasticsearch/elasticsearch.yml
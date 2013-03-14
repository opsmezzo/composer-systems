#!/bin/bash

#
# Install redis files
#
pushd /opt
  curl http://redis.googlecode.com/files/redis-2.6.10.tar.gz -o redis-2.6.10.tar.gz
  tar xzf redis-2.6.10.tar.gz
  cd redis-2.6.10
  make
  make PREFIX=/usr install
popd

#
# Add the redis user and directories
#
useradd redis || true
mkdir -p /var/lib/redis /var/log/redis /etc/redis
chown redis.redis /var/lib/redis /var/log/redis /etc/redis
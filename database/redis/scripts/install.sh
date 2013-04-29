#!/bin/bash

#
# Install redis files
#
pushd /opt
  curl http://redis.googlecode.com/files/redis-2.6.12.tar.gz -o redis-2.6.12.tar.gz
  tar xzf redis-2.6.12.tar.gz
  cd redis-2.6.12
  make
  make PREFIX=/usr install
popd

#
# Add the redis user and directories
#
adduser --system --no-create-home --disabled-password --disabled-login --ingroup adm redis
mkdir -p /var/lib/redis /var/log/redis /etc/redis /var/run/redis
chown redis:adm /var/lib/redis /var/log/redis /etc/redis /var/run/redis

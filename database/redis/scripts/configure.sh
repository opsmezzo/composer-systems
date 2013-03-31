#!/bin/bash

#
# Move redis and upstart config files into place.
#
cp ../templates/redis.conf /etc/redis/redis.conf
cp ../templates/upstart-redis.conf /etc/init/redis.conf
chown redis:adm /etc/redis/redis.conf /etc/init/redis.conf
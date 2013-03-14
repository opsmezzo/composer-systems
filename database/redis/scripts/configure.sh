#!/bin/bash

cp ../templates/redis.conf /etc/redis/redis.conf
cp ../templates/upstart-redis /etc/init/redis.conf
chown redis:adm /etc/redis/redis.conf /etc/init/redis.conf
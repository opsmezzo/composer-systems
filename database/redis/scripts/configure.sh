#!/bin/bash

cp ../templates/redis.conf /etc/redis/redis.conf
cp ../templates/init.d.redis /etc/init.d/redis-server
chmod +x /etc/init.d/redis-server
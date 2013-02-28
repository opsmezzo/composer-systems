#!/bin/bash -e

echo "${quill_os_networkInterfaces_eth0_ipv4_0} ${quill_os_hostname}" >> /etc/hosts

# Let's install rabbit the easy way
echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list
apt-key add ../files/rabbitmq-signing-key-public.asc
apt-get update
apt-get -y install rabbitmq-server


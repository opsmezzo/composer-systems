#!/bin/bash -e

# Stop the service entirely to set the Erlang cookie, then restart
service rabbitmq-server stop
epmd -kill

mkdir -p /etc/rabbitmq/rabbitmq.conf.d/
echo -n "$quill_bcpc_services_rabbitmq_cookie" > /var/lib/rabbitmq/.erlang.cookie
cp -f ../templates/rabbit-env.conf.template /etc/rabbitmq/rabbitmq.conf.d/bcpc.conf

cp -f ../templates/rabbitmq.config.template /etc/rabbitmq/rabbitmq.config
# Enable the management web interface
/usr/lib/rabbitmq/bin/rabbitmq-plugins enable rabbitmq_management

service rabbitmq-server start

# Change default rabbitmq password
rabbitmqctl change_password guest $quill_bcpc_services_kibana_vm_rabbit_password


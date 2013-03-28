#!/bin/bash

#
# Install graphite config files
#
pushd /opt/graphite/conf
  cp -f carbon.conf.example carbon.conf
  cp -f storage-schemas.conf.example storage-schemas.conf
popd

#
# Create initial graphite database
#
cd /opt/graphite/webapp/graphite
sudo python manage.py syncdb
sudo chown nobody:nobody /opt/graphite/storage/graphite.db
cp local_settings.py.example local_settings.py
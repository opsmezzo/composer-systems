#!/bin/bash

#
# Echo all commands
#
set -v

#
# Move graphite and upstart config files into place.
#
cp -f ../templates/carbon.conf /opt/graphite/conf/
cp -f ../templates/storage-schemas.conf /opt/graphite/conf/
cp -f ../templates/upstart-graphite.conf /etc/init/graphite.conf
cp -f ../templates/local_settings.py /opt/graphite/webapp/graphite/local_settings.py
#
# Create initial graphite database
#

pushd /opt/graphite/webapp/graphite
  python manage.py syncdb --noinput
  chown nobody:nogroup /opt/graphite/storage/graphite.db
popd
#!/usr/bin/env bash
apt-get -y install gcc make libicu48 libicu-dev erlang libmozjs185-dev g++ logrotate

ORIGINAL_DIR=`pwd`
cd $HOME

  curl http://www.us.apache.org/dist/couchdb/source/1.5.0/apache-couchdb-1.5.0.tar.gz | tar -zxvf-
  cd apache-couchdb-1.5.0
  ./configure
  make
  make install

  groupadd couchdb
  useradd -d /var/lib/couchdb -g couchdb couchdb
  mkdir -p /data/couchdb
  chown -R couchdb:couchdb /usr/local/var/{lib,log,run}/couchdb /usr/local/etc/couchdb /data/couchdb
  chmod 0770 /usr/local/var/{lib,log,run}/couchdb/ /data/couchdb
  chmod 664 /usr/local/etc/couchdb/*.ini
  chmod 775 /usr/local/etc/couchdb/*.d

  ln -s /usr/local/etc/logrotate.d/couchdb /etc/logrotate.d/couchdb
  ln -s /usr/local/etc/init.d/couchdb /etc/init.d/couchdb
  update-rc.d couchdb defaults

cd $ORIGINAL_DIR

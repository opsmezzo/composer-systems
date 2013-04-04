[ `uname` == 'Linux' ] && apt-get -y install erlang-dev erlang-manpages erlang-base-hipe erlang-eunit erlang-nox erlang-xmerl erlang-inets libmozjs185-dev libicu-dev libcurl4-gnutls-dev libtool make gcc build-essential
[ `uname` == 'SunOS' ] && ((yes | pkgin update ) || ( yes | pkgin install scmgit gcc-compiler gmake openssl python27 ruby18-rake-0.8.7nb2 gmake-3.82nb2 zlib-1.2.3 ))

cp ../files/https.pem $HOME/https.pem

ORIGINAL_DIR=`pwd`
cd $HOME
  wget http://www.us.apache.org/dist/couchdb/1.2.1/apache-couchdb-1.2.1.tar.gz
  tar xvf apache-couchdb-1.2.1.tar.gz
  cd apache-couchdb-1.2.1
  ./configure
  make
  make install

  useradd -d /var/lib/couchdb couchdb
  chown -R couchdb: /usr/local/var/{lib,log,run}/couchdb /usr/local/etc/couchdb
  chmod 0770 /usr/local/var/{lib,log,run}/couchdb/
  chmod 664 /usr/local/etc/couchdb/*.ini
  chmod 775 /usr/local/etc/couchdb/*.d

  ln -s /usr/local/etc/logrotate.d/couchdb /etc/logrotate.d/couchdb
  ln -s /usr/local/etc/init.d/couchdb /etc/init.d/couchdb
  update-rc.d couchdb defaults
cd $ORIGINAL_DIR

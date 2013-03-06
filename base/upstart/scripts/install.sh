#!/bin/bash

pushd /opt
  curl http://upstart.ubuntu.com/download/1.7/upstart-1.7.tar.gz -o upstart-1.7.tar.gz
  tar xzf upstart-1.7.tar.gz
  pushd upstart-1.7
    ./configure --prefix=/opt/upstart --sysconfdir=/etc
    make
    make install
  popd
popd
   
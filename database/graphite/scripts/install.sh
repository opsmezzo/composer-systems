#!/bin/bash

#
# Install graphite files
#
mkdir -p /opt/src
pushd /opt/src
  # graphite-web@0.9.x (stable) branch
  git clone https://github.com/graphite-project/graphite-web.git
  cd graphite-web
  git checkout 0.9.x
  python check-dependencies.py
  # TODO: Install python dependencies
  python setup.py install
  cd ..

  # carbon@0.9.x (stable) branch
  git clone https://github.com/graphite-project/carbon.git
  cd carbon
  git checkout 0.9.x
  python setup.py install
  cd ..
  
  # whisper@0.9.x (stable) branch
  git clone https://github.com/graphite-project/whisper.git
  cd whisper
  git checkout 0.9.x
  sudo python setup.py install
  cd ..
popd
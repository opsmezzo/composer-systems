#!/usr/bin/env bash

pushd /opt
  git clone https://github.com/wg/wrk.git
  cd wrk
  make
  make install
popd
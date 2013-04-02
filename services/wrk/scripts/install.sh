#!/usr/bin/env bash
set -v

pkgin -y install scmgit
pushd /opt
  git clone git://github.com/bnoordhuis/wrk.git
  cd wrk
  make
  ln wrk /opt/local/bin
popd

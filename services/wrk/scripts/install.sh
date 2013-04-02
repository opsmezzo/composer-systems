#!/usr/bin/env bash
set -v

pkgin -y install scmgit
pushd /opt
  git clone https://github.com/isaacs/wrk.git
  cd wrk
  make
  ln wrk /opt/local/bin
popd

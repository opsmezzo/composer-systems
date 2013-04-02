#!/usr/bin/env bash

# Echo commands
set -v

#
# Set BUILD_ROOT defaulting to `/opt`
#
BUILD_ROOT=/usr/local
GIT_REPO="https://github.com/wg/wrk.git"
if [ -d /opt/local ]; then
  BUILD_ROOT=/opt/local
  GIT_REPO="https://github.com/bnoordhuis/wrk.git"
  pkgin -y install scmgit
fi

pushd $BUILD_ROOT
  mkdir src
  cd src
  git clone $GIT_REPO
  cd wrk
  make
  ln wrk $BUILD_ROOT/bin/wrk
  cd ../..
popd

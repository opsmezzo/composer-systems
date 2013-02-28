#!/usr/bin/env bash

#
# Echo all commands
#
set -v

#
# Set BUILD_ROOT defaulting to `/opt`
#
[ -d /opt/local ] && BUILD_ROOT=/opt || BUILD_ROOT=/usr

if [ ! -z $q_nodejs_build_root ]; then
  BUILD_ROOT=$q_nodejs_build_root
fi

#
# Make the $HOME/www/dist directory for hosting node and
# $HOME/www/dist/haibu for hosting haibu deps.
#
PUBLIC_ROOT=$HOME/www/dist
mkdir -p $PUBLIC_ROOT/v$q_nodejs_version $PUBLIC_ROOT/haibu/

#
# Install any new versions of node.
#
export BUILD_ROOT PUBLIC_ROOT
$BUILD_ROOT/tmp/build-nodejs/build-haibu
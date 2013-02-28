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
# Create a temporarly location for all build-nodejs files
# e.g. /opt/tmp/build-nodejs
#
mkdir -p "$BUILD_ROOT/tmp/build-nodejs"
cp ../files/* "$BUILD_ROOT/tmp/build-nodejs/"

#
# Remove old version of node and re-clone from git
#
rm -rf /root/node/
git clone http://github.com/joyent/node.git /root/node

#
# Install global node version, only if $q_haibu_only is not set
#
if [ -z $q_nodejs_build_onlyhaibu ]; then
  VERSION=$q_nodejs_version ROOT="$BUILD_ROOT/local" $BUILD_ROOT/tmp/build-nodejs/build-node
else
  echo "Skipping base node.js build."
  echo "Only haibu node.js versions will be built."
fi

#
# Build all haibu dependent versions of node and additional
# libraries (i.e. haibu-carapace).
#
export BUILD_ROOT PUBLIC_ROOT
$BUILD_ROOT/tmp/build-nodejs/build-haibu
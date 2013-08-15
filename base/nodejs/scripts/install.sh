#!/usr/bin/env bash

#
# Echo all commands
#
set -v

#
# Set ROOT defaulting to `/opt/local`
#
[[ $PATH == *"/opt/local/bin"* ]] && ROOT=/opt/local || ROOT=/usr/local

#
# Download the nodejs tarball
#
cd /root

VERSION="v$q_nodejs_version"
PLATFORM="$q_nodejs_platform"

#
# **Dont replace $VERSION or $PLATFORM**, it will confuse
# baton bootstrapping process because $q[uill]_nodejs_version-
# is a valid env var
#
NODE_FILE="node-$VERSION-$PLATFORM-$q_nodejs_arch"
TARBALL="$NODE_FILE.tar.gz"
REMOTE="$q_nodejs_host/$VERSION/$TARBALL"

echo "Fetching $REMOTE to $TARBALL"
curl $REMOTE -o $TARBALL

#
# Unpack the tarball and install it.
#
pushd $ROOT
tar -zxf /root/$TARBALL --strip=1
hash -r
npm -g update npm
popd

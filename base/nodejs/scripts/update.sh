#!/usr/bin/env bash

#
# Echo all commands
#
set -v

#
# Set ROOT defaulting to `/opt/local`
#
[ -d /opt/local ] && ROOT=/opt/local || ROOT=/usr/local

#
# Set $ROOT, uninstall existing, and install new verison
#
export ROOT
./uninstall.sh
./install.sh
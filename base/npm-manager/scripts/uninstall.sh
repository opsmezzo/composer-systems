#!/usr/bin/env bash

#
# Set ROOT defaulting to `/opt/local`
#
[ -d /opt/local ] && ROOT=/opt/local || ROOT=/usr/local

#
# Install all files in ../files
#   * npm-download
#   * npm-install
#   * npm-update
#   * pkgver
#
for FILE in `ls ../files`; do
  echo "Installing $FILE"
  rm -f ../files/$FILE
done
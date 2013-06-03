#!/usr/bin/env bash

#
# Move npmrc to $HOME/.npmrc
#
cp ../templates/npmrc $HOME/.npmrc

#
# Load `quill_npm_*` environment variables into
# $HOME/.npmrc if they exist.
#
if [[ ! -z $q_npm_username && ! -z $q_npm_password ]]; then
  AUTH=$(printf '%b:%b' $q_npm_username $q_npm_password | base64)
  echo "_auth = $AUTH" >> $HOME/.npmrc
fi

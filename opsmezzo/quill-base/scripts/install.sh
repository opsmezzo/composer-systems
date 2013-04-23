#!/usr/bin/env bash

#
# Install forever from npm
#
npm install forever -g

#
# Install quill from npm
#
npm install quill-cli -g

#
# Configure the system manually on install
#
#
# Copy quillconf to $HOME/.quillconf
#
QCONF=$(cat <<EOF
{
  "username": "$q_composer_username",
  "password": "$q_composer_password",
  "remoteHost": "$q_composer_host",
  "port": "$q_composer_port"
}
EOF
)

echo "${QCONF}" >> $HOME/.quillconf
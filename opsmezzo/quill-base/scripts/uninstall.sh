#!/usr/bin/env bash

#
# Remove $HOME/.quillconf
#
rm -f $HOME/.quillconf

#
# Uninstall forever from npm
#
npm uninstall forever -g

#
# Uninstall quill from npm
#
npm uninstall quill-cli -g
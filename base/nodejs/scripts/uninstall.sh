#!/usr/bin/env bash

#
# Echo all commands
#
set -v

#
# Set ROOT defaulting to `/opt/local`
#
[ -d /opt/local ] && ROOT=/opt/local || ROOT=/usr/local

rm $ROOT/bin/node
rm $ROOT/bin/node-waf
rm $ROOT/bin/npm
rm $ROOT/Changelog
rm -rf $ROOT/include/node
rm -rf $ROOT/lib/dtrace
rm -rf $ROOT/lib/node
rm -rf $ROOT/bin/node_modules
rm $ROOT/LICENSE
rm $ROOT/README.md
rm $ROOT/share/man/man1/node.1
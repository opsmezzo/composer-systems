#!/bin/sh
VERSION=1.5.2

PREFIX=/opt/local

NGINX_FILE="nginx-$VERSION.tar.gz"
NGINX_DIR="nginx-$VERSION"

PCRE_FILE="pcre-8.33.tar.gz"
PCRE_DIR="pcre-8.33"

pkgin -y install gcc-compiler gmake

# nginx requires newer PCRE
curl "ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/$PCRE_FILE" -o "$PCRE_FILE"
tar -xf "$PCRE_FILE"

cd $PCRE_DIR
./configure --prefix=$PREFIX && gmake && gmake install
cd ..

# fetch and install nginx
curl "http://nginx.org/download/$NGINX_FILE" -o "$NGINX_FILE"
tar -xf "$NGINX_FILE"

cd "$NGINX_DIR"
./configure --prefix=$PREFIX && gmake && gmake install
cd ..

# install service manifest
svccfg import ../files/nginx-smf.xml

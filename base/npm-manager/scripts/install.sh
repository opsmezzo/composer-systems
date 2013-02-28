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
  chmod u+x,og-rwx ../files/$FILE
  cp ../files/$FILE $ROOT/bin
done
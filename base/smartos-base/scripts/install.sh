#
# Update the system
#
pkgin -y install scmgit gcc-compiler gmake openssl python27

cp ../files/limits $HOME/.limits
echo '. .limits' >> $HOME/.bashrc

hash -r

#
# Update the system
#
pkgin -y install scmgit python27 gcc-compiler gmake openssl

cp ../files/limits $HOME/.limits
grep '. .limits' $HOME/.bashrc || echo '. .limits' >> $HOME/.bashrc

hash -r

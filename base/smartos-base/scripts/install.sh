#
# Update the system
#
pkgin -y install scmgit python27 gcc-compiler gmake openssl

cp ../files/limits $HOME/.limits
grep '. .limits' $HOME/.bashrc || echo '. .limits' >> $HOME/.bashrc

cp ../files/env $HOME/.env
grep '. .env' $HOME/.bashrc || echo '. .env' >> $HOME/.bashrc

cp -f ../files/vimrc $HOME/.vimrc

hash -r

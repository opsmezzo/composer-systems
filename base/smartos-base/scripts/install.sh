#
# Update the system
#
pkgin -y install scmgit

cp ../files/limits $HOME/.limits
grep '. .limits' $HOME/.bashrc || echo '. .limits' >> $HOME/.bashrc

hash -r

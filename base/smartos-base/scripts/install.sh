#
# Update the system
#
pkgin -y install scmgit

cp ../files/limits $HOME/.limits
echo '. .limits' >> $HOME/.bashrc

hash -r

curl http://openbsd.org.ar/pub/OpenBSD/OpenSSH/portable/openssh-6.2p2.tar.gz | tar -zx
cd openssh-6.2p2
./configure --prefix=/user --sysconfdir=/etc/ssh
make
make install

http://redis.googlecode.com/files/redis-2.4.1.tar.gz | tar -xz
cd redis-2.4.1
make
make PREFIX=/usr install

useradd redis || true
mkdir -p /var/lib/redis /var/log/redis /etc/redis/
chown redis.redis /var/lib/redis
chown redis.redis /var/log/redis
cd $HOME

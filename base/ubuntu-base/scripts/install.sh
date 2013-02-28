#
# Update the system
#
apt-get -y update 
apt-get -y -f --force-yes install ntp
apt-get -y install git-core build-essential libssl-dev pkg-config libbz2-dev
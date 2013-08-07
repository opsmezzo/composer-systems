#
# Update the system
#
export DEBIAN_FRONTEND=noninteractive
apt-get -y update 
apt-get -y upgrade
apt-get -y install git-core build-essential libssl-dev pkg-config libbz2-dev ntp

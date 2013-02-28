#
# Get variables from q[uill]_*
#
: ${q_sshkey_type:="rsa"}
: ${q_sshkey_name:="id_rsa"}
: ${q_sshkey_email:="devops@nodejitsu.com"}
: ${q_sshkey_passphrase:=""}

for var in q_sshkey_type q_sshkey_name q_sshkey_email q_sshkey_passphrase
do
  echo "$var ${!var}"
done

SSHDIR="$HOME/.ssh"
KEYFILE="$SSHDIR/$q_sshkey_name"

#
# Make ~/.ssh
#
mkdir -p $SSHDIR

#
# Generate the sshkey
#
ssh-keygen -t $q_sshkey_type -C $q_sshkey_email -f $KEYFILE -N '$q_sshkey_passphrase'
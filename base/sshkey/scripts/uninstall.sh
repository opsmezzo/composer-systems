#
# Get variables from q[uill]_*
#
: ${q_sshkey_name:="id_rsa"}

SSHDIR="$HOME/.ssh"
KEYFILE="$SSHDIR/$q_sshkey_name"

#
# Remove both keyfiles
#
rm $KEYFILE "$KEYFILE.pub"
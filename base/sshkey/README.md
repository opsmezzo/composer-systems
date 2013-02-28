# sshkey

Adds a new SSH keypair on the target system

## Relevant config

All configuration is optional.

``` js
{
  "sshkey": {
    "type": "rsa",               // ssh-keygen -t [rsa, dsa, etc] 
    "name": "id_rsa",            // Name of the key to create in ~/.ssh/
    "email": "hello@host.com",   // ssh-keygen -C [email]
    "passphrase": "supersecretz" // ssh-keygen -N '[passphrase]'
  }
}
```

The defaults are:

``` js
{
  "sshkey": {
    "type": "rsa",
    "name": "id_rsa",
    "email": "devops@nodejitsu.com",
    "passphrase": ""
  }
}
```

## Scripts

There are several important scripts for this system:

* `install.sh`: Runs `ssh-keygen` with the specified configuration
* `uninstall.sh`: Removes the SSH key in `~/.ssh/`
# quill-base

Installs core private `npm` and `quill` files.

## Relevant config

``` js
{
  "npm": {
    "registry": "http://reg.njitsu.net", // npm registry to install from
    "username": "a-user",                // npm username
    "password": "a-password",            // npm password
  },
  "composer": {
    "host": "http://composer.njitsu.net", // conservatory composer host
    "host": 9003,                         // conservatory composer port
    "username": "a-user",                 // conservatory username
    "password": "a-password",             // conservatory password
  }
}
```

## Scripts

* `install.sh`: Installs `$HOME/.quillconf`, `forever`, `$HOME/.npmrc` and `quill-cli`
* `update.sh`: Updates `quill-cli` from `npm`.

## Files

* `quillconf`: Configuration for `quill`.
* `npmrc`: Configuration for `npm`.
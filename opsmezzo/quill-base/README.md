# quill-base

Installs core `quill` files.

## Relevant config

``` js
{
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
* `uninstall.sh`: Removes `$HOME/.quillconf`, `forever`, and `quill-cli`.

## Files

* `quillconf`: Configuration for `quill`.
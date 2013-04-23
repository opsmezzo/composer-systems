# npm-manager

Manages the lifecycle of a single npm package and related executables. **This system is installed on every server running a dependency from a private npm.**

## Relevant config

``` js
{
  "npm": {
    "registry": "http://reg.njitsu.net", // npm registry to install from
    "username": "a-user",                // npm username
    "password": "a-password",            // npm password
  }
}
```

## Workflow for dependent systems

There are many systems which depend on `npm-manager`. For each of these systems their workflow is very simple:

* `install`: `npm-download <package-name>`
* `update`: `npm-uninstall <package-name>; npm-update <package-name>`
* `configure`: `npm-configure <package-name>`

## Files

The management of `npm` packages is relatively simple and done with four files:

* `npm-download`: Downloads the tarball from `npm` into $HOME, untars it, and runs `npm install --production`.
* `npm-uninstall`: Moves any existing versions to `$HOME/versions/<version>`.
* `npm-update`: Runs `npm-uninstall <package-name>` and `npm-download <package-name>`. **The new version is installed but the old version is archived for rollback.**
* `npm-configure`: Moves any templates in `../templates` into `$HOME/config`. Since this will only be run on `quill configure` these templates will all ready be rendered when they are moved. 

## Templates

The only relevant template file is the `.npmrc` to be used by npm.

* `npmrc`: Configuration for `npm`.
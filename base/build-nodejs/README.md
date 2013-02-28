# build-nodejs

Builds and packages nodejs for global and haibu installs.

## Relevant config

``` js
{
  "nodejs": {
    "version": "0.8.16", # Global version of nodejs to build
    "build": {
      "root": "/opt"     # Optional
      "onlyhaibu": true, # Only builds haibu node version
      "versions": [      # Versions of node to build haibu for
        "0.6.21",
        "0.8.16"
      ]
    }
  }
}
```

## Scripts

There are several important scripts for this system:

* `install.sh`: Builds and packages the global version of node along with all haibu versions in `q_nodejs_version_(\d+)`
* `update.sh`: Does the same as `install.sh`, but does not build the global version of node.

So if you want to add a new version of node to the build server:

* 1. Add the version to the specified configuration you'll be using:

**config.json**

``` js
  "nodejs": {
    "build": {
      "versions": [
        "0.6.21",
        "0.8.16",
        "NEW-VERSION (e.g. 0.8.20)"
      ]
    }
  }
```

* 2. Merge that configuration into `conservatory`

```
  quill remote merge <config-name> ./config.json 
```

* 3. Run `quill update build-nodejs` with `baton`

```
  baton servers run
  commands: quill update build-nodejs --config <config-name>
```

## Files

The target [scripts](#scripts) use these files for building and packagine

* `build-haibu`: Builds and packages all node versions (and related dependencies) for haibu in `$q_nodejs_version_(\d+)` into `$HOME/www/dist/haibu/v<version>/v<version>-<platform>-<arch>.tar.gz`. Only does this for versions not already in `$HOME/www/dist/haibu/v<version>`.
* `build-node`: Builds and packages global version of node.js into `$HOME/www/dist/v<version>/node-v<version>-<platform>-<arch>.tar.gz`
* `install-node-haibu`: Builds a single version of node.js and related haibu dependencies (e.g. haibu-carapace)
* `npm-install-for-version`: Installs a single package for a specified node and npm version

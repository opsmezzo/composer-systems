# nodejs

Installs pre-built nodejs binaries from a specified build server. **This system is installed on every server running quill.**

## Relevant config

``` js
{
  "nodejs": {
    "version": "0.8.16",             // Version of nodejs to install.
    "platform": "sunos",             // Platform of the nodejs build.
    "arch": "x64",                   // CPU architecture of the nodejs build.
    "host": "http://nodejs.org/dist" // Host to download nodejs from
  }
}
```

## Scripts

There are several important scripts for this system:

* `install.sh`: Downloads, untars, and installs the build to this machine (e.g. `http://nodejs.org/dist/node-v0.8.16-sunos-x64.tar.gz`). 
* `update.sh`: Uninstalls any previous version then downloads, untars, and installs the build to this machine. 
* `start.sh`: Uninstalls any previous version of nodejs.

So if you want to add a new version of node to the build server:

* 1. Add the version to the specified configuration you'll be using:

**config.json**

``` js
  "nodejs": {
    "host": "http://nodejs.org/dist",
    "arch": "x64",
    "version": "0.8.16",
    "platform": "sunos"
  }
```

* 2. Merge that configuration into `conservatory`

```
  quill remote merge <config-name> ./config.json 
```

* 3. Run `quill update nodejs` with `baton`

```
  baton servers run
  commands: quill update nodejs --config <config-name>
```

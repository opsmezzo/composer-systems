# composer-systems

Generic systems for the conservatory composer which can be reused anywhere.

* **/base:** Systems and roles which are used by all systems.
  * **/build-nodejs:** [Builds and packages nodejs for global and haibu installs.][build-nodejs]
  * **/nodejs:** [Downloads and installs nodejs from a remote build server.][nodejs]
  * **/npm-manager:** [Manages the lifecycle of a single npm package and related executables.][npm-manager]
  * **/quill-base:** [Installs core private `npm` and `quill` files.][quill-base]
  * **/smartos-base:** [Base installation for SmartOS.][smartos-base]
  * **/ubuntu-base:** [Base installation for Ubuntu.][ubuntu-base]
  * **/sshkey:** [Installs a new SSH key][sshkey]
* **/database:** Systems and roles related to running databases used by other services.
  * **/couchdb:** [Relax. Installs CouchDB][couchdb] using [build-couchdb][build-couchdb].
  * **/redis:** [Installs redis from source.][redis]
* **/services:** [Systems and roles related to IaaS and DevOps][services]
  * **/ssh-tunnel:** [Creates a simple tunnel for ssh proxying from outside of a VLAN into the VLAN.][ssh-tunnel]
  * **/file-server:** [Creates a simple server for files inside of a VLAN.][file-server]

[build-nodejs]: /systems/base/build-nodejs
[nodejs]:       /systems/base/nodejs
[npm-manager]:  /systems/base/npm-manager
[quill-base]:   /systems/base/quill-base
[smartos-base]: /systems/base/smartos-base
[ubuntu-base]:  /systems/base/ubuntubase
[sshkey]:       /systems/base/sshkey

[build-couchdb]: https://github.com/iriscouch/build-couchdb
[couchdb]:       /systems/database/couchdb
[redis]:         /systems/database/redis

[services]:       /systems/services
[ssh-tunnel]:     /systems/services/ssh-tunnel
[file-server]:    /systems/services/file-server
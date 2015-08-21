 #!/bin/bash
set -o errexit
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
dpkg -i node_latest_armhf.deb
npm cache clean
npm install -g --unsafe-perm node-red

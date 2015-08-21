 #!/bin/bash
set -o errexit
apt-get update
apt-get install minicom
wget http://node-arm.herokuapp.com/node_latest_armhf.deb
dpkg -i node_latest_armhf.deb
npm cache clean
npm install -g --unsafe-perm node-red
cd /usr/local/lib/node_modules/node-red/
npm install easy-crc32
npm install crc
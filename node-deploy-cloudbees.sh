#!/bin/sh
set -x
mkdir -p target
rm -f target/node-web-app.zip
cd web-app
zip -r ../target/node-web-app.zip *
cd ..
bees app:deploy --appid node-seed -t node -RPLUGIN.SRC.node=https://s3.amazonaws.com/clickstacks/admin/nodejs-plugin-0.10.5.zip target/node-web-app.zip


#!/bin/bash
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs
cd /home/ubuntu/my-node-app
npm install

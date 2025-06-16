#!/bin/bash

# Update packages and install Node.js 18 if not already present
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Navigate to the app directory
cd /home/ubuntu/my-node-app

# Install npm dependencies
npm install

#!/bin/bash
cd /home/ubuntu/my-node-app
npm start > app.log 2>&1 &
echo $! > pid.file

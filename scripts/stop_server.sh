#!/bin/bash

# Stop the Node.js server if it's running
if [ -f /home/ubuntu/my-node-app/pid.file ]; then
  kill -9 $(cat /home/ubuntu/my-node-app/pid.file) || true
  rm /home/ubuntu/my-node-app/pid.file
fi

#!/bin/bash
if [ -f /home/ubuntu/my-node-app/pid.file ]; then
  kill -9 $(cat /home/ubuntu/my-node-app/pid.file) || true
  rm pid.file
fi

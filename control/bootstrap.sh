#!/usr/bin/env bash

# Create ssh key and copy it to shared folder
mkdir -p /root/.ssh
ssh-keygen -b 2048 -t rsa -f /root/.ssh/ansible-control -q -N ""
cp /root/.ssh/ansible-control*  /ssh-key/

# Don't halt, keeps the container running
tail -f /dev/null
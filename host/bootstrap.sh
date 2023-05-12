#!/usr/bin/env bash

mkdir -p /root/.ssh
cat /ssh-key/ansible-control.pub >> /root/.ssh/authorized_keys

# Run the SSH server
/usr/sbin/sshd -D -o ListenAddress=0.0.0.0
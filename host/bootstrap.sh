#!/usr/bin/env bash

mkdir -p /root/.ssh
cat /ssh-key/ansible-control.pub >> /root/.ssh/authorized_keys

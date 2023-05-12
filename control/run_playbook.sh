#!/usr/bin/env bash

echo "Executing playbook.yaml"

source /ansible/bin/activate
ansible-playbook -i /control/inventory.yaml /control/playbook.yaml
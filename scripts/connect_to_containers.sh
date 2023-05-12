#!/usr/bin/env bash

set -e

CONTROL_CONTAINER=$(docker container ls --all \
  --filter=ancestor=ansible-scratch-control \
  --format "{{.ID}}" | sed '/[^[:blank:]]/q;d')

HOST_CONTAINER=$(docker container ls --all \
  --filter=ancestor=ansible-scratch-host \
  --format "{{.ID}}" | sed '/[^[:blank:]]/q;d')

echo "Connect to CONTROL node using:"
echo "docker exec -it $CONTROL_CONTAINER /bin/bash"
echo "Don't forget to run \`source /ansible/bin/activate\` to run ansible commands!"
echo ""
echo "Execute ./control/playbook.yaml CONTROL on HOST:"
echo "docker exec -it $CONTROL_CONTAINER /control/run_playbook.sh"
echo ""
echo "Connect to HOST node using:"
echo "docker exec -it $HOST_CONTAINER /bin/bash"
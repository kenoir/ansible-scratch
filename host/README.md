# Host container

This container is intended to be provisioned via the Ansible playbook in the
`../host` folder. It has some special considerations as we are trying to simulate
a real network environment using VMs not containers.

We run this container in privileged mode via `docker-compose.yaml` and make the 
`CMD`  for the `Dockerfile`: `/sbin/init` in order to start `systemd` properly. 

For this reason we perform the host bootstrap to copy the SSH key via a systemd 
service.
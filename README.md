# Ansible Scratch

A RedHat Ansible host and control node defined and connected using docker to run local experiments.

## Setup

Start the containers:

```shell
docker-compose up --build
```

Connect to host or control node to either run an Ansible playbook, or review the results on the host:

```shell
# Outputs the docker command to connect
./scripts/connect_to_containers.sh
```

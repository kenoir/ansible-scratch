# Ansible commands

Ping machines in my inventory in group `my_machines`.

```
ansible my_machines -m ping -i inventory.yaml
```

Run `playbook.yaml` on all hosts in inventory.

```
ansible-playbook -i inventory.yaml playbook.yaml
```
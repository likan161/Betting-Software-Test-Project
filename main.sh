#!/bin/bash

serverpass='pass'

docker compose up -d && ansible-playbook playbook.yml --user root --extra-vars "ansible_ssh_pass"="$serverpass"

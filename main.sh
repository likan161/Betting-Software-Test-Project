#!/bin/bash

serverpass='pass'

docker compose up -d && ansible-playbook playbook.yml --user ubuntu --extra-vars "ansible_ssh_pass"="$serverpass" --extra-vars "ansible_become_pass"="$serverpass"



echo -e "\ncurl http://localhost/images/"
echo -e "\nssh antimansur@localhost -p 2222\nPassword: bardoviyRis4ChoRei"

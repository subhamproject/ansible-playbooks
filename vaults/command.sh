#!/bin/bash

ansible-vault create mysecrets.yml

ansible-vault view mysecrets.yml

ansible-vault edit mysecrets.yml

ansible-vault rekey mysecrets.yml

ansible-vault encrypt classified.txt

ansible-vault decrypt classified.txt

ansible-vault encrypt_string 'string' --name 'variable_name'

ansible-playbook deploy.yml --ask-vault-pass

ansible-playbook deploy.yml --vault-password-file  /home/tecmint/vault_pass.txt

vault_password_file = ~/.ansible_vault

ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass.txt ansible-playbook site.yml

[defaults]
vault_identity_list = dev@~/.vault_pass_dev, prod@~/.vault_pass_prod

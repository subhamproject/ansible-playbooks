#!/bin/bash

refer - https://ansible-tutorial.schoolofdevops.com/ansible-vault/

ansible-vault encrypt creds
ansible-vault encrypt staging --vault-id staging@prompt
ansible-vault encrypt prod --vault-id prod@~/.vault_prod

ansible-vault decrypt --vault-id staging@prompt staging --vault-id prod@~/.vault_prod --vault-id @prompt creds

ansible-vault encrypt_string --vault-id prod@~/.vault_prod 'password' --name 'mysql_root_password'

#!/usr/bin/env bash

ssh-add -l >/dev/null 2>&1
if [ "${?}" == "0" ]
then
  ansible-playbook -v -i "localhost" localhost.yml && \
  ansible-playbook -v -i inventory/aws/hosts/ec2.py workshop.yml
else
  echo "You must run this with ssh-agent holding a key via ssh-add"
  exit 1
fi

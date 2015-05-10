#!/bin/sh
set -ex
ansible-galaxy install -r requirements.yml
ansible-playbook site.yml -vv

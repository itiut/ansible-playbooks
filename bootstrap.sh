#!/usr/bin/env bash
set -eu

curl https://bootstrap.pypa.io/get-pip.py | sudo python
sudo pip install ansible

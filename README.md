ansible-playbooks
====
Ansible playbooks for my development enviroments


Target Environments
----
* OS X El Capitan 10.11 [![Build Status](https://travis-ci.org/itiut/ansible-playbooks.svg?branch=master)](https://travis-ci.org/itiut/ansible-playbooks)

Requirements
----
* git
* homebrew
* ansible 1.9

```console
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install ansible
```
**NOTE**: Commands to install homebrew may change. Check http://brew.sh/.


Installation
----
```console
$ mkdir -p ~/src/github.com/itiut
$ cd $_
$ git clone https://github.com/itiut/ansible-playbooks
$ cd ansible-playbooks
$ ansible-galaxy install -r requirements.yml
```


Usage
----
```console
$ ansible-playbook site.yml -K
```

ansible-playbooks
====
Ansible playbooks for my development enviroments


Target Environments
----
* OS X El Capitan 10.11 [![Build Status](https://travis-ci.org/itiut/ansible-playbooks.svg?branch=master)](https://travis-ci.org/itiut/ansible-playbooks)
* Antergos [![Circle CI](https://circleci.com/gh/itiut/ansible-playbooks.svg?style=svg&circle-token=9c4cfadd2f81035f00785fea3f4216d098380aa4)](https://circleci.com/gh/itiut/ansible-playbooks)


Requirements
----
* git
* homebrew
* ansible 1.9

### OS X
```console
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install ansible
```
**NOTE**: Commands to install homebrew may change. Check http://brew.sh/.

### Antergos
```console
$ sudo pacman -S ansible
```


Installation
----
```console
$ mkdir -p ~/src/github.com/itiut
$ cd $_
$ git clone git://github.com/itiut/ansible-playbooks
$ cd ansible-playbooks
$ sudo ansible-galaxy install -r requirements.yml
```


Usage
----
```console
$ ansible-playbook site.yml -K
```

osx-playbooks
====
Ansible playbooks for my OS X enviroments


Target Environment
----
* OS X El Capitan 10.11 [![Build Status](https://travis-ci.org/itiut/osx-playbooks.svg?branch=master)](https://travis-ci.org/itiut/osx-playbooks)

Requirements
----
* git
* homebrew
* ansible 1.9

```console
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install ansible
```
**NOTE**: Commands to install homebrew may change. See http://brew.sh/.


Installation
----
```console
$ mkdir -p ~/src/github.com/itiut
$ cd $_
$ git clone https://github.com/itiut/osx-playbooks
$ cd osx-playbooks
$ ansible-galaxy install -r requirements.yml
```


Usage
----
```console
$ ansible-playbook site.yml -K
```

ansible-playbooks
====
Ansible playbooks for my development enviroments


Target Environments
----
* OS X Yosemite 10.10
* Ubuntu 14.04


Requirements
----
* git
* ansible

### OS X
```console
$ curl https://bootstrap.pypa.io/get-pip.py | sudo python
$ sudo pip install ansible
```

### Ubuntu
```console
$ sudo apt-get install git python-dev python-pip
$ sudo pip install ansible
```


Installation
----
```console
$ ssh-keygen
$ mkdir -p ~/src/github.com/itiut
$ cd $_
$ git clone git://github.com/itiut/ansible-playbooks.git
```


Usage
----
```console
$ ansible-playbook site.yml -K
```

ansible-playbooks
====
Ansible playbooks for my development enviroments


Target Environments
----
* OS X Yosemite 10.10
* Ubuntu 14.04
* Antergos


Requirements
----
* git
* ansible 1.9

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

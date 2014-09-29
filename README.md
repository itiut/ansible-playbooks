itiut-ansible-playbooks
====
Ansible playbooks for my enviroments


Target Environments
----
* OS X Mavericks 10.9
* Ubuntu 14.04


Requirements
----
* git
* ansible

### OS X
```console
$ curl https://bootstrap.pypa.io/get-pip.py | sudo python
```

### Ubuntu
```console
$ sudo apt-get install git python-dev python-pip
$ sudo pip install ansible
```


Installation
----
```console
$ ssh-keygen -t rsa
$ git clone git://github.com/itiut/itiut-ansible-playbooks ~/src/github.com/itiut/itiut-ansible-playbooks
```


Usage
----
```console
$ ansible-playbook site.yml -K
```

itiut-ansible
====

Installation
----
```
$ sudo apt-get install git python-pip
$ sudo pip install ansible
$ ssh-keygen -t rsa
$ git clone git@github.com:itiut/itiut-ansible.git
```

Usage
----
```
$ ansible-playbook site.yml -i localhost -K
```

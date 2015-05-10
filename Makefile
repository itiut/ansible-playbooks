.PHONY: all info playbook

REQ_FILE := requirements.yml
ROLES_PATH := /etc/ansible/roles
DEP_ROLES := $(shell cat $(REQ_FILE) | cut -d ' ' -f 3)
DEPS := $(addprefix $(ROLES_PATH)/,$(DEP_ROLES))

playbook: $(DEPS)
	ansible-playbook site.yml -vv

$(DEPS):
	sudo ansible-galaxy install -r $(REQ_FILE) -i

all: info playbook

info:
	ansible localhost -m setup -c local

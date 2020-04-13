#!/usr/bin/env bash

sudo dnf -y install ansible
if [[ ! -d ~/workspace ]]; then
    mkdir ~/workspace
fi
git clone git@github.com:twotired/my-ansible.git ~/workspace/my-ansible.git
cd ~/workspace/my-ansible.git

sudo snap known --remote model model=generic-classic series=16 brand-id=generic > assertion
sudo snap ack assertion
sudo ln -s /var/lib/snapd/snap /snap

ansible-playbook -K -v ./fedora-workstation.yml


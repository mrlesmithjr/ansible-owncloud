#!/bin/bash
sudo apt-get update
sudo apt-get install -y git python-pip python-dev
sudo pip install jinja2
sudo pip install ansible
sudo git clone https://github.com/mrlesmithjr/ansible-owncloud.git /etc/ansible/roles/ansible-owncloud
sudo git clone https://github.com/mrlesmithjr/ansible-mysql.git /etc/ansible/roles/ansible-mysql
ansible-playbook -i "localhost," -c local /vagrant/playbook.yml

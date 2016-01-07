#!/bin/bash
sudo apt-get update
sudo apt-get install -y git python-pip python-dev
sudo pip install jinja2
sudo pip install ansible
sudo git clone https://github.com/mrlesmithjr/ansible-owncloud.git /etc/ansible/roles/ansible-owncloud
sudo git clone https://github.com/mrlesmithjr/ansible-mysql.git /etc/ansible/roles/ansible-mysql
sudo git clone https://github.com/mrlesmithjr/ansible-apt-mirror.git /etc/ansible/roles/ansible-apt-mirror
ansible-playbook -i "localhost," -c local /vagrant/playbook.yml

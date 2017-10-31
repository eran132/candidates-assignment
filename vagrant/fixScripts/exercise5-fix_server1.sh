#!/bin/bash
#add fix to exercise5-server1 here
sudo echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config
sudo echo "    UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config
sudo mkdir -p /home/vagrant/.ssh
sudo chmod 700 /home/vagrant/.ssh
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
su vagrant -c "ssh-keygen -t rsa -P '' -f /home/vagrant/.ssh/id_rsa"
sudo mkdir -p /vagrant/files/ssh
sudo cp /home/vagrant/.ssh/id_rsa.pub /vagrant/files/ssh/`hostname`.pub
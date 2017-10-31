#!/bin/bash
#add fix to exercise5-server2 here
sudo echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config
sudo echo "    UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config
sudo mkdir -p /home/vagrant/.ssh
sudo chmod 700 /home/vagrant/.ssh
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
sudo cat /vagrant/files/ssh/server1.pub >> /home/vagrant/.ssh/authorized_keys
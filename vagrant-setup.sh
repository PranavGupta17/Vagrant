#! /bin/bash

echo "Download and Install Virtualbox"
wget https://download.virtualbox.org/virtualbox/5.2.12/virtualbox-5.2_5.2.12-122591~Ubuntu~xenial_amd64.deb
dpkg -i virtualbox-5.2_5.2.12-122591~Ubuntu~xenial_amd64.deb

echo "Download and Install Vagrant"
wget https://releases.hashicorp.com/vagrant/2.1.1/vagrant_2.1.1_x86_64.deb
dpkg -i vagrant_2.1.1_x86_64.deb

echo "Creation and Initialization of Vagrant Container"
mkdir vagrant
cd vagrant/
vagrant init vm
vagrant box add vm https://dl.dropboxusercontent.com/s/60pv9an852jx9y0/Debian-7.3.0-i386b.box?dl=1
vagrant up



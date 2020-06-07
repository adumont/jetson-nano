#!/bin/bash

sudo systemctl stop gdm3
sudo systemctl disable gdm3

#sudo systemctl enable multi-user.target
sudo systemctl set-default multi-user.target

#sudo apt-get -y purge whoopsie
#sudo apt-get -y purge unattended-upgrades
#sudo apt-get -y purge modemmanager

#!/bin/bash
A=$PWD
cd /tmp
git clone https://github.com/Pyrestone/jetson-fan-ctl.git
cd jetson-fan-ctl
./install.sh
sudo cp $A/config.json /etc/automagic-fan/
sudo systemctl restart automagic-fan
rm -rf jetson-fan-ctl
cd -

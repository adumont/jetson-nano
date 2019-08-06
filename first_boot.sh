#!/bin/bash -x

sudo apt-get -yy update
sudo apt-get -yy dist-upgrade
sudo apt-get -yy autoremove

cp .gitconfig ~/

./setup_swapfile.sh

cd camera
./setup_cam.sh
cd -

cd fan
./setup_fancontrol.sh
cd -

cd nomachine
./setup_nomachine.sh
cd -

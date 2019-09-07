#!/bin/bash

# https://github.com/jkjung-avt/jetson_nano/blob/master/install_basics.sh
if ! grep 'cuda/bin' ${HOME}/.bashrc > /dev/null ; then
  echo "** Add CUDA stuffs into ~/.bashrc"
  echo >> ${HOME}/.bashrc
  echo "export PATH=/usr/local/cuda/bin:\${PATH}" >> ${HOME}/.bashrc
  echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:\${LD_LIBRARY_PATH}" >> ${HOME}/.bashrc
fi

set -x

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

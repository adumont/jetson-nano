#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install python3-numpy python3-scipy python3-matplotlib python3-pandas
sudo apt-get -y install python3-pip python3-pil
sudo apt-get -y install build-essential python-dev git
sudo apt-get -y install python-requests python-typing
sudo apt-get -y install g++ cmake python-dev
sudo apt-get -y install nodejs npm freetype2-demos
sudo apt-get -y install zlib1g-dev zip libjpeg8-dev libhdf5-dev libpng-devel libfreetype-devel
sudo apt-get -y install libhdf5-serial-dev hdf5-tools
sudo apt-get -y install cython python-cuda
sudo apt-get -y install pkg-config libfreetype6-dev libpng12-dev
#sudo apt-get -y install htop

pip3 install freetype-py
pip3 install pypng 
pip3 install dataclasses bottleneck
pip3 install pynvx
pip3 install pandas
pip3 install fire
pip3 install jupyter jupyterlab
pip3 install fastprogress

#pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu
#pip3 install --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu==$TF_VERSION+nv$NV_VERSION

wget https://nvidia.box.com/shared/static/veo87trfaawj5pfwuqvhl6mzc5b55fbj.whl -O torch-1.1.0a0+b457266-cp36-cp36m-linux_aarch64.whl
pip3 install torch-1.1.0a0+b457266-cp36-cp36m-linux_aarch64.whl
pip3 install torchvision --no-deps
pip3 install spacy==2.0.18

pip3 install fastai --no-deps

mkdir .fastai
mkdir .fastai/data

echo "done with part1 - now logout, login again and run setup_jupyter.sh"

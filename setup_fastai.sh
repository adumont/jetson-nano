#!/bin/bash
sudo apt-get -yy update
sudo apt-get -yy dist-upgrade

sudo apt-get -y install python3-numpy python3-scipy python3-matplotlib python3-pandas
sudo apt-get -y install python3-pip python3-pil
sudo apt-get -y install build-essential python-dev git
sudo apt-get -y install python-requests python-typing
sudo apt-get -y install g++ cmake python-dev
sudo apt-get -y install nodejs npm freetype2-demos
sudo apt-get -y install zlib1g-dev zip libjpeg8-dev libhdf5-dev libpng-dev libfreetype6-dev
sudo apt-get -y install libhdf5-serial-dev hdf5-tools
sudo apt-get -y install cython python-cuda
sudo apt-get -y install pkg-config libfreetype6-dev libpng12-dev
#sudo apt-get -y install htop

pip3 install freetype-py
pip3 install pypng 
pip3 install dataclasses bottleneck
pip3 install pynvx
#pip3 install pandas
pip3 install fire
pip3 install jupyter jupyterlab
pip3 install fastprogress

# TensorFlow
#pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu
#pip3 install --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu==$TF_VERSION+nv$NV_VERSION

# Updated PyTorch, see https://devtalk.nvidia.com/default/topic/1049071/jetson-nano/pytorch-for-jetson-nano/

#wget https://nvidia.box.com/shared/static/j2dn48btaxosqp0zremqqm8pjelriyvs.whl -O torch-1.1.0-cp36-cp36m-linux_aarch64.whl
pip3 install numpy dist/torch-1.1.0-cp36-cp36m-linux_aarch64.whl

# pip3 install torchvision --no-deps

# Build & Install Torchvision
# see https://devtalk.nvidia.com/default/topic/1049071/jetson-nano/pytorch-for-jetson-nano/
sudo apt-get install libjpeg-dev zlib1g-dev

#git clone -b v0.3.0 https://github.com/pytorch/vision torchvision
#cd torchvision
#sudo python3 setup.py install
#cd ..
#rm -rf torchvision
pip3 install dist/torchvision-0.3.0-cp36-cp36m-linux_aarch64.whl

pip3 install spacy==2.0.18

pip3 install nvidia-ml-py3
pip3 install packaging
pip3 install typing

pip3 install fastai --no-deps

sudo apt-get -yy autoremove

mkdir .fastai
mkdir .fastai/data

echo "done with part1 - now logout, login again and run setup_jupyter.sh"

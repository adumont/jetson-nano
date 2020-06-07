# Instructions to install TensorFlow on Jetson Nano
# https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html

sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev

sudo apt-get install python3-pip
sudo pip3 install -U pip

sudo -H pip3 install -U numpy grpcio absl-py py-cpuinfo psutil portpicker six mock requests gast h5py astor termcolor protobuf keras-applications keras-preprocessing wrapt google-pasta tensorboard

sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu --no-deps

sudo pip3 install -U keras

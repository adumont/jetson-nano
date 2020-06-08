# Instructions to install TensorFlow on Jetson Nano

# In this I use help from:
# https://forums.developer.nvidia.com/t/official-tensorflow-for-jetson-nano/71770

# There's also this page:
# https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html

sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev

sudo apt-get install python3-pip
sudo pip3 install -U pip

pip3 install -U dist/{numpy-1.17.0,grpcio,absl_py,py_cpuinfo,psutil,portpicker,termcolor-1.1.0-cp36,wrapt,gast}* six mock requests  h5py astor protobuf keras-applications keras-preprocessing  google-pasta

# TF-1.15
pip3 install dist/{wrapt,gast}* --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 tensorflow==1.15.2+nv20.3

# TF-2.x
# pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 tensorflow==2.1.0+nv20.3

pip3 install -U keras

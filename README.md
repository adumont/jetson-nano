# Jetson Nano ![NVidiaLogo](https://developer.nvidia.com/sites/all/themes/devzone_base/images/nvidia.png) 

### Tutorials 

- Two days to a demo https://developer.nvidia.com/embedded/twodaystoademo

### Utils

Get info about your board:

```
$ cat /proc/device-tree/model
NVIDIA Jetson Nano Developer Kit
```
Get information about the NVIDIA Jetson OS environment, L4T, JetPack version, using [jetsonhacks/jetsonUtilities](https://github.com/jetsonhacks/jetsonUtilities):

```
$ ./jetsonInfo.py 
 NVIDIA Jetson TX1
 L4T 32.2.0 [ JetPack 4.2.1 ]
 Ubuntu 18.04.4 LTS
 Kernel Version: 4.9.140-tegra
 CUDA 10.0.326
```

### Frameworks

- [Fast.AI](https://forums.fast.ai/t/share-your-work-here/27676/1274)
- [Scripts for building OpenCV on the NVIDIA Jetson Nano](https://github.com/JetsonHacksNano/buildOpenCV)
  - seems to need to install qt4-make or qt5-make (not sure which one)
- [PyTorch & Torchvision](https://devtalk.nvidia.com/default/topic/1049071/jetson-nano/pytorch-for-jetson-nano/)
- [Instructions to install TensorFlow on Jetson Nano](https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html)
- [OpenCV & dlib](https://medium.com/@ageitgey/build-a-hardware-based-face-recognition-system-for-150-with-the-nvidia-jetson-nano-and-python-a25cb8c891fd)
- This guy also have his custom scripts to build [opencv, ssd caffe, tensorflow](https://github.com/jkjung-avt/jetson_nano) & https://jkjung-avt.github.io/opencv-on-nano/

- Tensorflow
  - [Installing TensorFlow For Jetson Platform](https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html) (also as [PDF](https://docs.nvidia.com/deeplearning/frameworks/pdf/Install-TensorFlow-Jetson-Platform.pdf))
  - [Release Notes For Jetson Platform](https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform-release-notes/tf-jetson-rel.html#tf-jetson-rel): See TensorFlow compatibility with NVIDIA containers and Jetpack
  - [Prebuilt Tensorflow python wheels per Jetpack version](https://developer.download.nvidia.com/compute/redist/jp/)


### Camera

- [Jetson Nano + Raspberry Pi Camera](https://www.jetsonhacks.com/2019/04/02/jetson-nano-raspberry-pi-camera/)
- [NVIDIA-AI-IOT/jetcam](https://github.com/NVIDIA-AI-IOT/jetcam)
  - See [Configure Nvidia Jetson Nano as an AI testbed](https://thenewstack.io/tutorial-configure-nvidia-jetson-nano-as-an-ai-testbed/)
  
### Fan

- I've got the [Noctua NF-A4x10 5V PWM 40x10mm Premium Fan](https://noctua.at/en/nf-a4x10-5v-pwm)
  - You'll need additional M3-16 (3mm,16mm) screws to mount it as the silicon screws provided by Noctua are too big for the Nano dissipator's holes (3mm).
- NVidia recommends the [Noctua NF-A4x20 5V PWM 40x20mm Premium Fan](https://noctua.at/en/nf-a4x20-5v-pwm)

How to control the fan:

- Manually (0 off, 255 full speed):
```
sudo sh -c 'echo 255 > /sys/devices/pwm-fan/target_pwm'
```
- Or Automatically: [Jetson Fan Control](https://github.com/Pyrestone/jetson-fan-ctl)

### Power Management

- Official [Power Management for Jetson Nano](https://docs.nvidia.com/jetson/l4t/index.html#page/Tegra%20Linux%20Driver%20Package%20Development%20Guide/power_management_nano.html#wwpID0E6HA) page
- Max perf: sudo /usr/bin/jetson_clocks
- Power Mode (Mode 0 is 10W MAXN, Mode 1 is 5W): sudo nvpmodel -m 0

### Case

- [NanoBox Connectors' Edition](https://cults3d.com/en/3d-model/tool/jetson-nano-case-connectors-edition)

### Things I've got to check

- [Docker containers, Computer Vision and Cuda](https://twitter.com/pjdecarlo/status/1149850403149762560) 

### Reference

- Nvidia Doc [Jetson Modules and Developer Kits](https://docs.nvidia.com/jetson/l4t/index.html#page/Tegra%2520Linux%2520Driver%2520Package%2520Development%2520Guide%2Fhw_setup.html%23wwpID0E0FN0HA)

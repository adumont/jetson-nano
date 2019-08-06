# jetson-nano

### Frameworks

- [Fast.AI](https://forums.fast.ai/t/share-your-work-here/27676/1274)
- [Scripts for building OpenCV on the NVIDIA Jetson Nano](https://github.com/JetsonHacksNano/buildOpenCV)
  - seems to need to install qt4-make or qt5-make (not sure which one)
- [PyTorch & Torchvision](https://devtalk.nvidia.com/default/topic/1049071/jetson-nano/pytorch-for-jetson-nano/)
- [Instructions to install TensorFlow on Jetson Nano](https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html)
- [OpenCV & dlib](https://medium.com/@ageitgey/build-a-hardware-based-face-recognition-system-for-150-with-the-nvidia-jetson-nano-and-python-a25cb8c891fd)
- This guy also have his custom scripts to build [opencv, ssd caffe, tensorflow](https://github.com/jkjung-avt/jetson_nano) & https://jkjung-avt.github.io/opencv-on-nano/

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

### Things I've got to check

- [Docker containers, Computer Vision and Cuda](https://twitter.com/pjdecarlo/status/1149850403149762560) 

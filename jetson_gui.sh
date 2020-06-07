#!/bin/bash
sudo systemctl enable gdm3
sudo systemctl enable graphical.target
sudo systemctl set-default graphical.target

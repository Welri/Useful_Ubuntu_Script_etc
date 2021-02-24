#!/bin/bash

## Make sure that the four boxes under Software & Updates are ticked. (Canonical, Multiverse, Universe and the other one)

## Setup sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

## Setup your keys
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
## If you experience issues connecting to the keyserver, you can try substituting hkp://pgp.mit.edu:80 or hkp://keyserver.ubuntu.com:80 in the previous command. 

## Installation
sudo apt-get update
sudo apt-get clean
sudo apt install ros-noetic-desktop-full

# Environment setup
## Add source /opt/ros/noetic/setup.bash to /.bashrc using: 
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

## Dependencies for building packages
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
## Rosdep enables you to easily install system dependencies for source you want to compile and is required to run some core components in ROS.
sudo apt install python3-rosdep
## Initialize rosdep
sudo rosdep init
rosdep update
sudo apt-get update
sudo apt-get autoremove

## http://wiki.ros.org/noetic/Installation/Ubuntu for more information

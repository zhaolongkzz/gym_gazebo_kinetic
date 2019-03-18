#!/bin/bash
conda env create > gym_gazebo.yaml

source activate gym
# conda activate gym

# cd gym_gazebo_kinetic


conda install matplotlib scikit-image
pip install rospkg catkin_pkg
pip install netifaces defusedxml empy
pip install catkin_pkg rospkg opencv-python

sudo apt-get install python-pyqt4

sudo apt-get install \
cmake gcc g++ qt4-qmake libqt4-dev \
libusb-dev libftdi-dev \
python-defusedxml python-vcstool \
ros-kinetic-octomap-msgs        \
ros-kinetic-joy                 \
ros-kinetic-geodesy             \
ros-kinetic-octomap-ros         \
ros-kinetic-control-toolbox     \
ros-kinetic-pluginlib	       \
ros-kinetic-trajectory-msgs     \
ros-kinetic-control-msgs	       \
ros-kinetic-std-srvs 	       \
ros-kinetic-nodelet	       \
ros-kinetic-urdf		       \
ros-kinetic-rviz		       \
ros-kinetic-kdl-conversions     \
ros-kinetic-eigen-conversions   \
ros-kinetic-tf2-sensor-msgs     \
ros-kinetic-pcl-ros \
ros-kinetic-navigation

# cd ~/gym
# pip install -e .

# cd `pwd`
# pip install -e .

cd gym-gazebo/gym_gazebo/envs/installation
bash setup_kinetic.bash

cd gym_gazebo/envs/installation/
bash turtlebot_setup.bash

# or using nn , cnn
# cd gym_gazebo/envs/installation/
# bash turtlebot_nn_setup.bash



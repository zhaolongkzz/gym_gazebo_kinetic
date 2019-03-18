#!/bin/bash
# http://sdk.rethinkrobotics.com/wiki/Hello_Baxter
# http://sdk.rethinkrobotics.com/wiki/Simulator_Installation

if [ -z "$ROS_DISTRO" ]; then
  echo "ROS not installed. Check the installation steps: http://wiki.ros.org/ROS/Installation! "
fi

program="gazebo"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "Gazebo is not installed. Check the installation steps: https://github.com/erlerobot/gym#installing-the-gazebo-environment"
fi

source /opt/ros/kinetic/setup.bash
# Create baxter_ws
ws="baxter_ws"
if [ -d $ws ]; then
  echo "Error: baxter_ws directory already exists" 1>&2
fi
src=$ws"/src"
mkdir -p $src
cd $src
catkin_init_workspace

# Import and build dependencies of baxter
cd ../../baxter_ws/src/
wstool init .
wstool merge https://raw.githubusercontent.com/RethinkRobotics/baxter_simulator/master/baxter_simulator.rosinstall
wstool update
# vcs import < ../../gazebo_baxter.repos
cd ../
baxter_make

# Use baxter.sh - it has a special hook for sim
cp src/baxter/baxter.sh .

bash -c 'echo source `pwd`/devel/setup.bash >> ~/.bashrc'
echo "## ROS workspace compiled ##"

# add own models path to gazebo models path
if [ -z "$GAZEBO_MODEL_PATH" ]; then
  bash -c 'echo "export GAZEBO_MODEL_PATH="`pwd`/../../assets/models >> ~/.bashrc'
  exec bash #reload bashrc
fi

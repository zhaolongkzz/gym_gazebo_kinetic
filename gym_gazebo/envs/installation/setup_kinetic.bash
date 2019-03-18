#!/bin/bash

if [ -z "$ROS_DISTRO" ]; then
  echo "ROS not installed. Check the installation steps: https://github.com/erlerobot/gym#installing-the-gazebo-environment"
fi

program="gazebo"
condition=$(which $program 2>/dev/null | grep -v "not found" | wc -l)
if [ $condition -eq 0 ] ; then
    echo "Gazebo is not installed. Check the installation steps: https://github.com/erlerobot/gym#installing-the-gazebo-environment"
fi

source /opt/ros/kinetic/setup.bash
# Create gym_ws
ws="gym_ws"
if [ -d $ws ]; then
  echo "Error: gym_ws directory already exists" 1>&2
fi
src=$ws"/src"
mkdir -p $src
cd $src
catkin_init_workspace

# Import and build dependencies
cd ../../gym_ws/src/
vcs import < ../../gazebo_ros_kinetic.repos


cd ../
#catkin_make --pkg mav_msgs
#source devel/setup.bash

touch src/joystick_drivers/spacenav_node/CATKIN_IGNORE
touch src/joystick_drivers/wiimote/CATKIN_IGNORE
touch src/kobuki_desktop/kobuki_qtestsuite/CATKIN_IGNORE

catkin_make
bash -c 'echo source `pwd`/devel/setup.bash >> ~/.bashrc'
echo "## ROS workspace compiled ##"

# add own models path to gazebo models path
if [ -z "$GAZEBO_MODEL_PATH" ]; then
  bash -c 'echo "export GAZEBO_MODEL_PATH="`pwd`/../../assets/models >> ~/.bashrc'
  exec bash #reload bashrc
fi

echo "finish setup_kinetic!"

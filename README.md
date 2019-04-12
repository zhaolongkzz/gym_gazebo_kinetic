
EN | [中文]

# Overview of gym-gazebo
An OpenAI gym extension for using Gazebo known as `gym-gazebo`! This work can put gym environment with gazbeo, then you would like putting robot into gazebo with code applying gym. You can also visit the official github here [gym-gazebo](https://github.com/erlerobot/gym-gazebo). If you use ROS2, the better way to you is visiting the newest version [gym-gazebo2](https://github.com/AcutronicRobotics/gym-gazebo2).

## Summary
Because the official github which install version to Ubuntu16.04 has been deprecated, and the package in author's github has many question that has been closed without issues, Here I provide installation of mine and some hint to problem solving.

The original Installation of authors is here [original](https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/Introduction.md) and here [INSTALL](https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/INSTALL.md). If this installation wouldn't help you, visiting the author's github and submit a issue.

## Prerequisites
- ubuntu16.04
- ROS-Kinetic
  &ensp;&ensp;(visit the official web [here](http://wiki.ros.org/kinetic/Installation/Ubuntu).)
- Gazebo 7.14
- openai-gym
  &ensp;&ensp;(visit gym github [here](https://github.com/openai/gym.git).)
- anaconda3
  &ensp;&ensp;(install anaconda, click [here](http://docs.anaconda.com/anaconda/install/linux/).)
- python=2.7
  &ensp;&ensp;(with anaconda env below.)

The package you need to install:
- numpy=1.16.2
- matplotlib=2.2.3

If you want to train it with GPU here, you should install cuda
- cuda=9.0
- libcudnn7.3


## Installation of conda env

Create an environment to run them.
```bash
conda create -n gymenv python=2.7
source activate gymenv
```

Install gym and gym-gazebo
```bash
# install gym
git clone https://github.com/openai/gym.git
cd gym
pip install -e .

# install gym-gazebo
git clone https://github.com/zhaolongkzz/gym_gazebo_kinetic
cd ~/gym_gazebo_kinetic
pip install -e .
```

Here some package you need to install first in your conda environment, if not, it will appear some errors when you run the code.
```bash
conda install numpy matplotlib

pip install rospkg catkin_pkg

pip install defusedxml

conda install scikit-image

pip install netifaces
```

## Installation of ROS
First installing some ROS dependencies below:
```bash
sudo apt-get install \
cmake gcc g++ qt4-qmake libqt4-dev \
libusb-dev libftdi-dev \
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
```

Other dependencies and libraries:
```bash
# Failed to find libusb
sudo apt-get install libusb-dev
# ftdi.h: No such file or directory
sudo apt-get install libftdi-dev

sudo apt-get install ros-kinetic-sophus

sudo apt-get install ros-kinetic-ar-track-alvar-msgs

sudo apt-get install ros-kinetic-rqt-joint-trajectory-controller
```

Update your gazebo:
```bash
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install gazebo7
```


## Quickstart

### 1.Compile all the packages
**Note**: All the command in ROS, I recommand executing in terminal without anaconda, this may lead some interference with your dependencies.

I have alter some github package or version in files, use `gazebo_ros_kinetic.repos` in my github [here](https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/gym_gazebo/envs/installation/gazebo_ros_kinetic.repos), please.
```bash
cd gym_gazebo_kinetic/envs/installation
bash setup_kinetic.bash
```

Put model file into your workspace/src folder.
```bash
cd gym_gazebo_kinetic/envs/installation
bash turtlebot_setup.bash
```

After first two steps above, you will find five lines being added in your `~/.bashrc`:
```bash
source /home/zzl/gym-gazebo/gym_gazebo/envs/installation/gym_ws/devel/setup.bash
export GAZEBO_MODEL_PATH=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/models
export GYM_GAZEBO_WORLD_MAZE=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/maze.world
export GYM_GAZEBO_WORLD_CIRCUIT=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/circuit.world
export GYM_GAZEBO_WORLD_CIRCUIT2=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/circuit2.world
export GYM_GAZEBO_WORLD_CIRCUIT2C=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/circuit2c.world
export GYM_GAZEBO_WORLD_ROUND=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/round.world
```

Here open a new termianl, and uncomment your conda env in your `.bashrc`. Then using it with below:
```bash
source activate gymenv

cd gym_gazebo/examples/scripts_turtlebot
python circuit2_turtlebot_lidar_qlearn.py
```


### 2.Open gazebo
Open another Terminal:
```bash
cd gym-gazebo/gym_gazebo/envs/installation/
source turtlebot_setup.bash
# here the number is set in your code, default 12346
export GAZEBO_MASTER_URI=http://localhost:12346
gzclient
```

```bash
cd examples/utilities
python display_plot.py
```

## Picture
<p align="center">
  <img src="https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/imgs/qlearn.png"><br><br>
</p>

<p align="center">
  <img src="https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/imgs/dqn.png"><br><br>
</p>


## LICENCE
[MIT License]()


## FAQ
**Q1**: If you encounter that `ImportError: No module named msg` like below:
```bash
Traceback (most recent call last):
  File "/home/zzl/gym_gazebo_kinetic/gym_gazebo/envs/installation/gym_ws/src/hector_gazebo/hector_gazebo_thermal_camera/cfg/GazeboRosThermalCamera.cfg", line 5, in <module>
    from driver_base.msg import SensorLevels
ImportError: No module named msg
```

**A1**: Run driver_base first, like that `catkin_make -DCATKIN_WHITELIST_PACKAGES="driver_base"`.

* * *

**Q2**: If you encounter that `ImportError: cannot import name _validate_lengths` like below:
```bash
from numpy.lib.arraypad import _validate_lengths
ImportError: cannot import name _validate_lengths
```

**A2**: You need to upgrade your scikit-image, like that `pip install --upgrade scikit-image`. I test the version of 0.14.2 works well.

* * *

**Q3**: If encountering like below:
```bash
ERROR: cannot launch node of type [robot_state_publisher/robot_state_publisher]: robot_state_publisher
```

**A3**: Need to run `sudo apt-get install ros-kinetic-robot-state-publisher`

* * *

**Q4**: Here your protobuf is disturbed by conda or wrong version of your protobuf.
```bash
[libprotobuf FATAL google/protobuf/stubs/common.cc:61] This program requires version 3.6.1 of the Protocol Buffer runtime library, but the installed version is 2.6.1.  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in "google/protobuf/any.pb.cc".)
terminate called after throwing an instance of 'google::protobuf::FatalException'
  what():  This program requires version 3.6.1 of the Protocol Buffer runtime library, but the installed version is 2.6.1.  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in "google/protobuf/any.pb.cc".)
Aborted (core dumped)
[gazebo-1] process has died [pid 25049, exit code 134, cmd /home/zhaolong/gym_gazebo_kinetic/gym_gazebo/envs/installation/gym_ws/src/gazebo_ros_pkgs/gazebo_ros/scripts/gzserver --verbose -e ode /home/zhaolong/gym_gazebo_kinetic/gym_gazebo/envs/installation/../assets/worlds/circuit2.world __name:=gazebo __log:=/home/zhaolong/.ros/log/1593dbda-496c-11e9-8009-54bf648baa4d/gazebo-1.log].
log file: /home/zhaolong/.ros/log/1593dbda-496c-11e9-8009-54bf648baa4d/gazebo-1*.log
```

**A4**: `conda install protobuf=3.5.2` in conda, here I recommand that version 2.6 is better for ubuntu16.04, so run all of the code in 2.6, please.

* * *

**Q5**: Lack of h files.
```bash
fatal error: spnav.h: No such file or directory
fatal error: cwiid.h: No such file or directory
```

**A5**:
```bash
sudo apt-get install libspnav-dev
sudo apt-get install libcwiid-dev
```

* * *

**Q6**:
```bash
/usr/include/gazebo-7/gazebo/msgs/msgs.hh:24:37: fatal error: ignition/math/Inertial.hh: No such file or directory
```

**A6**:
```bash
sudo apt-get install libignition-math2-dev
```

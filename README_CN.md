[EN](https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/README.md) | 中文

# Overview of gym-gazebo
`gym-gazebo`作为OpenAI gym的一个延伸工具，能够将gym环境应用到gazebo上，方便了ros用户在机器人环境中使用强化学习进行仿真！你也可以查看官方的库 [gym-gazebo](https://github.com/erlerobot/gym-gazebo). 如果使用ROS2，那么直接尝试最新版的 [gym-gazebo2](https://github.com/AcutronicRobotics/gym-gazebo2).

## Summary 总结
由于官方github中的Ubuntu16版本已经废弃了，其提供的安装教程不能很好的使用，当前官方更新了gym-gazebo2，所以1的版本关闭了问题，所以以前的一些问题解答也查看不了了，这里我提供自己根据代码，来安装的一些技巧，以及安装的解决方法。

作者原来github的 [安装源](https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/Introduction.md) 和他 [原来的安装方法](https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/INSTALL.md). 如果官方的方法，你不能正常运行，可以查看我的方法，如果还是不行，可以去作者新的库提问。

## Prerequisites 必备项
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

需要安装的包
- numpy=1.16.2
- matplotlib=2.2.3

如果你想用GPU来训练，需要安装cuda
- cuda=9.0
- libcudnn7.3


## 安装Conda的环境

为了更好的运行，创建一个环境。
```bash
conda create -n gymenv python=2.7
source activate gymenv
```

安装gym 和 gym-gazebo
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

下面是一些python的工具包，你需要在conda环境中先安装好，如果缺失，会导致后面运行代码出错。

```bash
conda install numpy matplotlib

pip install rospkg catkin_pkg

pip install defusedxml

conda install scikit-image

pip install netifaces
```

## ROS部分的安装
首先安装ROS的一些常用的依赖，请按照一下安装：
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

这里需要安装一些本代码环境需要的一些依赖库：
```bash
# Failed to find libusb
sudo apt-get install libusb-dev
# ftdi.h: No such file or directory
sudo apt-get install libftdi-dev

sudo apt-get install ros-kinetic-sophus

sudo apt-get install ros-kinetic-ar-track-alvar-msgs

sudo apt-get install ros-kinetic-rqt-joint-trajectory-controller
```

请更新gazebo：
```bash
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install gazebo7
```


## 快速入手

### 1.编译所有的包
**注意**: 所有在ROS中执行的命令，我推荐在terminal中先屏蔽conda(即，在没有conda的环境中运行ROS)， 否则会导致conda中一些包和ros中的依赖干扰。

我已经对原来的repo中的一些包进行更新和添加缺失项，可以直接在我的github上使用`gazebo_ros_kinetic.repos`  [here](https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/gym_gazebo/envs/installation/gazebo_ros_kinetic.repos)。
```bash
cd gym_gazebo_kinetic/envs/installation
bash setup_kinetic.bash
```

将模型文件放入到你的 workspace/src 文件夹。.
```bash
cd gym_gazebo_kinetic/envs/installation
bash turtlebot_setup.bash
```

以上两步完成后，你会在`~/.bashrc`中发现，增加了以下5行命令:
```bash
source /home/zzl/gym-gazebo/gym_gazebo/envs/installation/gym_ws/devel/setup.bash
export GAZEBO_MODEL_PATH=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/models
export GYM_GAZEBO_WORLD_MAZE=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/maze.world
export GYM_GAZEBO_WORLD_CIRCUIT=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/circuit.world
export GYM_GAZEBO_WORLD_CIRCUIT2=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/circuit2.world
export GYM_GAZEBO_WORLD_CIRCUIT2C=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/circuit2c.world
export GYM_GAZEBO_WORLD_ROUND=/home/zzl/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/round.world
```

打开一个新的 termianl, 在`.bashrc`中取消注释你的conda环境。然后使用以下方式：
```bash
source activate gymenv

cd gym_gazebo/examples/scripts_turtlebot
python circuit2_turtlebot_lidar_qlearn.py
```


### 2.打开gazebo
打开另外一个Terminal:
```bash
cd gym-gazebo/gym_gazebo/envs/installation/
source turtlebot_setup.bash
# here the number is set in your code, default 12346
export GAZEBO_MASTER_URI=http://localhost:12346
gzclient
```

可以通过一下的代码显示一个图形，以便于观察当前的回报值：
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
[MIT License](https://github.com/zhaolongkzz/gym_gazebo_kinetic/blob/kinetic/LICENSE)


## FAQ

**Q1**: 如果遇到`ImportError: No module named msg`，像以下情况:
```bash
Traceback (most recent call last):
  File "/home/zzl/gym_gazebo_kinetic/gym_gazebo/envs/installation/gym_ws/src/hector_gazebo/hector_gazebo_thermal_camera/cfg/GazeboRosThermalCamera.cfg", line 5, in <module>
    from driver_base.msg import SensorLevels
ImportError: No module named msg
```

**A1**: 可以先编译driver_base, 像这样 `catkin_make -DCATKIN_WHITELIST_PACKAGES="driver_base"`.

* * *

**Q2**: 如果是这样的问题`ImportError: cannot import name _validate_lengths` :
```bash
from numpy.lib.arraypad import _validate_lengths
ImportError: cannot import name _validate_lengths
```

**A2**: 需要升级scikit-image,  `pip install --upgrade scikit-image`. 我测试过0.14.2 可以使用.

* * *

**Q3**: 如果是:
```bash
ERROR: cannot launch node of type [robot_state_publisher/robot_state_publisher]: robot_state_publisher
```

**A3**: 需要安装 `sudo apt-get install ros-kinetic-robot-state-publisher`

* * *

**Q4**: 如果是`protobuf`的版本干扰
```bash
[libprotobuf FATAL google/protobuf/stubs/common.cc:61] This program requires version 3.6.1 of the Protocol Buffer runtime library, but the installed version is 2.6.1.  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in "google/protobuf/any.pb.cc".)
terminate called after throwing an instance of 'google::protobuf::FatalException'
  what():  This program requires version 3.6.1 of the Protocol Buffer runtime library, but the installed version is 2.6.1.  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in "google/protobuf/any.pb.cc".)
Aborted (core dumped)
[gazebo-1] process has died [pid 25049, exit code 134, cmd /home/zhaolong/gym_gazebo_kinetic/gym_gazebo/envs/installation/gym_ws/src/gazebo_ros_pkgs/gazebo_ros/scripts/gzserver --verbose -e ode /home/zhaolong/gym_gazebo_kinetic/gym_gazebo/envs/installation/../assets/worlds/circuit2.world __name:=gazebo __log:=/home/zhaolong/.ros/log/1593dbda-496c-11e9-8009-54bf648baa4d/gazebo-1.log].
log file: /home/zhaolong/.ros/log/1593dbda-496c-11e9-8009-54bf648baa4d/gazebo-1*.log
```

**A4**: 在conda中`conda install protobuf=3.5.2`, 这里我推荐在ubuntu下使用2.6版本，并且所有编译的文件都需要位于2.6环境。
注意先注释/关闭conda环境，然后再使用`catkin_make`编译所有的包 , 即：在bashrc中注释掉conda环境. 如果所有的包都编译完成, 然后打开一个新的terminal，取消注释conda，运行 `python circuit2_turtlebot_lidar_qlearn.py`



* * *

**Q5**: 缺少h文件.
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

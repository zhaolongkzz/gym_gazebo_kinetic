# OpenAi_ROS
[TOC]


##



```bash
sudo pip install rospkg catkin_pkg

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

```


pip install catkin_pkg rospkg opencv-python
conda install matplotlib scikit-image
pip install netifaces defusedxml empy






## baxter_gazebo

[https://github.com/uzh-rpg/rpg_esim/issues/7]
```bash
//usr/lib/x86_64-linux-gnu/libapr-1.so.0: undefined reference to `uuid_generate@UUID_1.0'
collect2: error: ld returned 1 exit status
baxter_simulator/baxter_sim_io/CMakeFiles/baxter_sim_io.dir/build.make:308: recipe for target '/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/devel/lib/baxter_sim_io/baxter_sim_io' failed
make[2]: *** [/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/devel/lib/baxter_sim_io/baxter_sim_io] Error 1
CMakeFiles/Makefile2:4429: recipe for target 'baxter_simulator/baxter_sim_io/CMakeFiles/baxter_sim_io.dir/all' failed
make[1]: *** [baxter_simulator/baxter_sim_io/CMakeFiles/baxter_sim_io.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....


conda install -c conda-forge libuuid
```

[https://answers.ros.org/question/292444/gazebo_ros_control-plugin-gazeboroscontrolplugin-missing-legacymodens-defaultrobothwsim/]
```bash
[ERROR] [1552460477.606427458, 0.164000000]: GazeboRosControlPlugin missing <legacyModeNS> while using DefaultRobotHWSim, defaults to true.
This setting assumes you have an old package with an old implementation of DefaultRobotHWSim, where the robotNamespace is disregarded and absolute paths are used instead.
If you do not want to fix this issue in an old package just set <legacyModeNS> to true.

src/baxter_common/baxter_description/urdf/baxter_base/baxter_base.gazebo.xacro:5:
<plugin name="baxter_ros_control" filename="libbaxter_gazebo_ros_control.so">
  <robotNamespace>/robot</robotNamespace>
  <robotSimType>gazebo_ros_control/DefaultRobotHWSim</robotSimType>

you should add on line here:
  <legacyModeNS>true</legacyModeNS>
```

```
Error when loading left_joint_position_controller
Error when loading right_joint_position_controller
Error when loading joint_state_controller
Error when loading head_position_controller
Error when loading right_gripper_controller
Error when starting  ['joint_state_controller']
Error when loading left_gripper_controller
Error when loading left_joint_velocity_controller
Error when loading right_joint_velocity_controller
Error when loading left_joint_effort_controller
Error when loading right_joint_effort_controller

[gazebo-1] process has died [pid 9422, exit code 255, cmd /opt/ros/kinetic/lib/gazebo_ros/gzserver -e ode /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/src/baxter_simulator/baxter_gazebo/worlds/baxter.world __name:=gazebo __log:=/home/zzl/.ros/log/36be98a4-455c-11e9-8945-dca266407807/gazebo-1.log].
log file: /home/zzl/.ros/log/36be98a4-455c-11e9-8945-dca266407807/gazebo-1*.log

you should install all of the dependencies
```






* * *


## Install Dependencies

Execute the following commands:
```bash
cd ~/ros_ws/src
git clone https://bitbucket.org/theconstructcore/openai_ros.git
cd ~/ros_ws
catkin_make
source devel/setup.basho
rosdep install openai_ros
```


## Use



* * *



(http://wiki.ros.org/pid)
```bash
sudo apt-get install ros-kinetic-pid

cd catkin_ws/src
git clone https://bitbucket.org/AndyZe/pid.git
cd ..
catkin_make
```

- - -

```bash
File "/opt/ros/kinetic/lib/python2.7/dist-packages/rosmaster/util.py", line 48, in <module>
    from defusedxml.xmlrpc import monkey_patch
ImportError: No module named defusedxml.xmlrpc
```

```bash
conda install -c conda-forge defusedxml
```

- - -

```bash
from numpy.lib.arraypad import _validate_lengths
ImportError: cannot import name _validate_lengths
```

```bash
pip install --upgrade scikit-image
```
And the problem was solved. It's a problem of version of Skimage, which is solved in 0.14.2. PLus, this version is quite stable.

- - -

```bash
resource not found: create_description
ROS path [0]=/opt/ros/kinetic/share/ros
ROS path [1]=/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src
ROS path [2]=/opt/ros/kinetic/share None
```

```bash
cd ~/gym_ws/src
git clone https://github.com/turtlebot/turtlebot_create.git
```

- - -

```bash
while processing /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/turtlebot/turtlebot_gazebo/launch/includes/kobuki.launch.xml:
Invalid <param> tag: Cannot load command parameter [robot_description]: command [/opt/ros/kinetic/lib/xacro/xacro --inorder '/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/turtlebot/turtlebot_description/robots/kobuki_hexagons_asus_xtion_pro.urdf.xacro'] returned with code [2].

Param xml is <param command="$(arg urdf_file)" name="robot_description"/>
The traceback for the exception was written to the log file
```








```bash
Before running bash files:
open gym-gazebo/gym_gazebo/envs/installation/gazebo.repos
and change by copy-pasting
  ar_track_alvar:
    type: git
    url: https://github.com/sniekum/ar_track_alvar
    version: kinetic-devel
  ecl_core:
    type: git
    url: https://github.com/stonier/ecl_core
    version: release/0.61-indigo-kinetic
  ecl_lite:
    type: git
    url: https://github.com/stonier/ecl_lite
    version: release/0.61-indigo-kinetic
  ecl_navigation:
    type: git
    url: https://github.com/stonier/ecl_navigation
    version: devel
  ecl_tools:
    type: git
    url: https://github.com/stonier/ecl_tools
    version: release/0.61-indigo-kinetic
  vision_opencv:
    type: git
    url: https://github.com/ros-perception/vision_opencv
    version: kinetic
  mav_comm:
   type: git
   url: https://github.com/ethz-asl/mav_comm.git
   version: master
```


gazebo8安装
```bash
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install gazebo8


sudo apt-get install libignition-math3
sudo apt-get install libgazebo8
sudo apt-get install ros-kinetic-gazebo8-ros-pkgs ros-kinetic-gazebo8-ros-control

```





```bash
ERROR: cannot launch node of type [robot_state_publisher/robot_state_publisher]: robot_state_publisher


sudo apt-get install ros-kinetic-robot-state-publisher
```


```bash
PARAMETERS
 * /cmd_vel_mux/yaml_cfg_file: /home/zzl/RL/gym-...
 * /robot_description: <?xml version="1....
 * /robot_state_publisher/publish_frequency: 30.0
 * /rosdistro: kinetic
 * /rosversion: 1.12.14
 * /use_sim_time: True

NODES
  /
    cmd_vel_mux (nodelet/nodelet)
    gazebo (gazebo_ros/gzserver)
    mobile_base_nodelet_manager (nodelet/nodelet)
    robot_state_publisher (robot_state_publisher/robot_state_publisher)
    spawn_turtlebot_model (gazebo_ros/spawn_model)

[Wrn] [msgs.cc:1832] Conversion of sensor type[depth] not supported.
[Wrn] [msgs.cc:1832] Conversion of sensor type[gpu_ray] not supported.

and we don't have the PARAMETERS or NODES:

PARAMETERS
 * /bumper2pointcloud/pointcloud_radius: 0.24
 * /cmd_vel_mux/yaml_cfg_file: /home/xlv/gym-gaz...
 * /depthimage_to_laserscan/output_frame_id: /camera_depth_frame
 * /depthimage_to_laserscan/range_min: 0.45
 * /depthimage_to_laserscan/scan_height: 10
 * /robot_description: <?xml version="1....
 * /robot_state_publisher/publish_frequency: 30.0
 * /rosdistro: kinetic
 * /rosversion: 1.12.14
 * /use_sim_time: True

NODES
  /
    bumper2pointcloud (nodelet/nodelet)
    cmd_vel_mux (nodelet/nodelet)
    depthimage_to_laserscan (nodelet/nodelet)
    gazebo (gazebo_ros/gzserver)
    gazebo_gui (gazebo_ros/gzclient)
    laserscan_nodelet_manager (nodelet/nodelet)
    mobile_base_nodelet_manager (nodelet/nodelet)
    robot_state_publisher (robot_state_publisher/robot_state_publisher)
    spawn_turtlebot_model (gazebo_ros/spawn_model)
```
Solve:
```bash


sudo apt-get install ros-kinetic-depthimage-to-laserscan
```




```bash
spnav.h: No such file or directory

sudo apt-get install libspnav-dev


/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/joystick_drivers/wiimote/include/wiimote/wiimote_controller.h:52:35: fatal error: cwiid.h: No such file or directory

sudo apt-get install libcwiid-dev


sudo apt-get install ros-kinetic-kobuki ros-kinetic-kobuki-core
sudo apt-get install ros-indigo-ar-track-alvar
```
http://wiki.ros.org/kobuki/Tutorials/Installation
http://wiki.ros.org/ar_track_alvar


```bash
/bin/sh: 1: pyrcc4: not found
kobuki_desktop/kobuki_qtestsuite/CMakeFiles/kobuki_qtestsuite.dir/build.make:57: recipe for target 'kobuki_desktop/kobuki_qtestsuite/CMakeFiles/kobuki_qtestsuite' failed
make[2]: *** [kobuki_desktop/kobuki_qtestsuite/CMakeFiles/kobuki_qtestsuite] Error 127
CMakeFiles/Makefile2:945: recipe for target 'kobuki_desktop/kobuki_qtestsuite/CMakeFiles/kobuki_qtestsuite.dir/all' failed
make[1]: *** [kobuki_desktop/kobuki_qtestsuite/CMakeFiles/kobuki_qtestsuite.dir/all] Error 2


sudo apt-get install pyqt4-dev-tools
```


```bash
CMake Warning at /opt/ros/kinetic/share/catkin/cmake/catkin_package.cmake:166 (message):
  catkin_package() DEPENDS on 'libusb' but neither 'libusb_INCLUDE_DIRS' nor
  'libusb_LIBRARIES' is defined.
Call Stack (most recent call first):
  /opt/ros/kinetic/share/catkin/cmake/catkin_package.cmake:102 (_catkin_package)
  kobuki_core/kobuki_ftdi/CMakeLists.txt:10 (catkin_package)

pip install pylibusb


CMake Warning at /opt/ros/kinetic/share/catkin/cmake/catkin_package.cmake:166 (message):
catkin_package() DEPENDS on 'libftdi' but neither 'libftdi_INCLUDE_DIRS'
  nor 'libftdi_LIBRARIES' is defined.
Call Stack (most recent call first):
  /opt/ros/kinetic/share/catkin/cmake/catkin_package.cmake:102 (_catkin_package)
  kobuki_core/kobuki_ftdi/CMakeLists.txt:10 (catkin_package)

pip install pylibftdi
```


```bash
[https://github.com/openai/gym/pull/942]
[https://github.com/HumanCompatibleAI/gym/commit/6261562022337461837cfcb29ab45ccdc0ecfebd]


PkgResourcesDeprecationWarning: Parameters to load are deprecated.  Call .resolve and .require separately.

You need to alter in gym/envs/registration.py 14-line
replace `result = entry_point.load(False)` by  `result = entry_point.resolve()`
```














- - -


/home/zzl/RL/gym/gym/envs/registration.py:14: PkgResourcesDeprecationWarning: Parameters to load are deprecated.  Call .resolve and .require separately.
  result = entry_point.load(False)
ROS_MASTER_URI=http://localhost:10051

GAZEBO_MASTER_URI=http://localhost:10052

Gazebo launched!
Unable to register with master node [http://localhost:11311]: master may not be running yet. Will keep trying.
... logging to /home/zzl/.ros/log/dd0607a0-4274-11e9-b7c2-8f3428ed751f/roslaunch-zzl-Legion-26600.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

deprecated: xacro tags should be prepended with 'xacro' xml namespace.
Use the following script to fix incorrect usage:
        find . -iname "*.xacro" | xargs sed -i 's#<\([/]\?\)\(if\|unless\|include\|arg\|property\|macro\|insert_block\)#<\1xacro:\2#g'
when processing file: /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/turtlebot/turtlebot_description/urdf/turtlebot_properties.urdf.xacro
included from: /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/turtlebot/turtlebot_description/urdf/turtlebot_library.urdf.xacro
included from: /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/turtlebot/turtlebot_description/robots/kobuki_hexagons_asus_xtion_pro.urdf.xacro

started roslaunch server http://zzl-Legion:34429/

SUMMARY
========

PARAMETERS
 * /cmd_vel_mux/yaml_cfg_file: /home/zzl/RL/gym-...
 * /robot_description: <?xml version="1....
 * /robot_state_publisher/publish_frequency: 30.0
 * /rosdistro: kinetic
 * /rosversion: 1.12.14
 * /use_sim_time: True

NODES
  /
    cmd_vel_mux (nodelet/nodelet)
    gazebo (gazebo_ros/gzserver)
    mobile_base_nodelet_manager (nodelet/nodelet)
    robot_state_publisher (robot_state_publisher/robot_state_publisher)
    spawn_turtlebot_model (gazebo_ros/spawn_model)

auto-starting new master
process[master]: started with pid [26616]
ROS_MASTER_URI=http://zzl-Legion:10051/

setting /run_id to dd0607a0-4274-11e9-b7c2-8f3428ed751f
process[rosout-1]: started with pid [26629]
started core service [/rosout]
process[gazebo-2]: started with pid [26632]
process[spawn_turtlebot_model-3]: started with pid [26633]
process[mobile_base_nodelet_manager-4]: started with pid [26635]
process[cmd_vel_mux-5]: started with pid [26642]
process[robot_state_publisher-6]: started with pid [26657]
Gazebo multi-robot simulator, version 7.14.0
Copyright (C) 2012 Open Source Robotics Foundation.
Released under the Apache 2 License.
http://gazebosim.org

[ INFO] [1552140531.651417214]: Finished loading Gazebo ROS API Plugin.
[ INFO] [1552140531.651769967]: waitForService: Service [/gazebo/set_physics_properties] has not been advertised, waiting...
[Msg] Waiting for master.
[Msg] Connected to gazebo master @ http://127.0.0.1:11345
[Msg] Publicized address: 192.168.31.161
[ INFO] [1552140532.695027849, 1.830000000]: waitForService: Service [/gazebo/set_physics_properties] is now available.
[ INFO] [1552140532.725783354, 32.670000000]: Physics dynamic reconfigure ready.
[Wrn] [Publisher.cc:141] Queue limit reached for topic /gazebo/default/physics/contacts, deleting message. This warning is printed only once.
[spawn_turtlebot_model-3] process has finished cleanly
log file: /home/zzl/.ros/log/dd0607a0-4274-11e9-b7c2-8f3428ed751f/spawn_turtlebot_model-3*.log
[ INFO] [1552140533.476868165, 322.430000000]: Camera Plugin: Using the 'robotNamespace' param: '/'
[Wrn] [msgs.cc:1808] Conversion of sensor type[depth] not suppported.
[Wrn] [msgs.cc:1808] Conversion of sensor type[imu] not suppported.
[Wrn] [msgs.cc:1808] Conversion of sensor type[gpu_ray] not suppported.
[ INFO] [1552140533.551573733, 322.430000000]: Camera Plugin (ns = /)  <tf_prefix_>, set to ""
[ INFO] [1552140533.606228512, 322.430000000]: Laser Plugin: Using the 'robotNamespace' param: '/'
[ INFO] [1552140533.606416729, 322.430000000]: Starting GazeboRosLaser Plugin (ns = /)
[ INFO] [1552140533.669613793, 322.430000000]: GPU Laser Plugin (ns = /) <tf_prefix_>, set to ""
[ INFO] [1552140533.670289675, 322.430000000]: LoadThread function completed
[ INFO] [1552140533.822304470, 322.430000000]: Starting plugin DiffDrive(ns = //)
[ WARN] [1552140533.822416558, 322.430000000]: DiffDrive(ns = //): missing <rosDebugLevel> default is na
[ INFO] [1552140533.823653436, 322.430000000]: DiffDrive(ns = //): <tf_prefix> =
[ WARN] [1552140533.823757479, 322.430000000]: DiffDrive(ns = //): missing <publishWheelTF> default is false
[ WARN] [1552140533.823771735, 322.430000000]: DiffDrive(ns = //): missing <publishOdomTF> default is true
[ WARN] [1552140533.823867470, 322.430000000]: DiffDrive(ns = //): missing <wheelAcceleration> default is 0
[ WARN] [1552140533.823881349, 322.430000000]: DiffDrive(ns = //): missing <wheelTorque> default is 5
[ WARN] [1552140533.831096529, 322.430000000]: DiffDrive(ns = //): missing <odometrySource> default is 1
[ WARN] [1552140533.831160133, 322.430000000]: GazeboRosDiffDrive Plugin (ns = ) missing <publishTf>, defaults to 1
[ INFO] [1552140533.831766366, 322.430000000]: DiffDrive(ns = //): Advertise joint_states
[ INFO] [1552140533.832502449, 322.430000000]: DiffDrive(ns = //): Try to subscribe to cmd_vel
[ INFO] [1552140533.834600729, 322.430000000]: DiffDrive(ns = //): Subscribe to cmd_vel
[ INFO] [1552140533.835182162, 322.430000000]: DiffDrive(ns = //): Advertise odom on odom
[Wrn] [msgs.cc:1808] Conversion of sensor type[depth] not suppported.
[Wrn] [msgs.cc:1808] Conversion of sensor type[imu] not suppported.
[Wrn] [msgs.cc:1808] Conversion of sensor type[gpu_ray] not suppported.
[Wrn] [Publisher.cc:141] Queue limit reached for topic /gazebo/default/pose/local/info, deleting message. This warning is printed only once.




- - -


/home/zzl/RL/gym/gym/envs/registration.py:14: PkgResourcesDeprecationWarning: Parameters to load are deprecated.  Call .resolve and .require separately.
  result = entry_point.load(False)
ROS_MASTER_URI=http://localhost:13507

GAZEBO_MASTER_URI=http://localhost:13508

Gazebo launched!
Unable to register with master node [http://localhost:11311]: master may not be running yet. Will keep trying.
... logging to /home/zzl/.ros/log/49d923e0-4274-11e9-b663-935f6d670359/roslaunch-zzl-Legion-26035.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://zzl-Legion:35941/

SUMMARY
========

PARAMETERS
 * /bumper2pointcloud/pointcloud_radius: 0.24
 * /cmd_vel_mux/yaml_cfg_file: /home/zzl/RL/gym-...
 * /robot_description: <?xml version="1....
 * /robot_state_publisher/publish_frequency: 30.0
 * /rosdistro: kinetic
 * /rosversion: 1.12.14
 * /use_sim_time: True

NODES
  /
    bumper2pointcloud (nodelet/nodelet)
    cmd_vel_mux (nodelet/nodelet)
    gazebo (gazebo_ros/gzserver)
    mobile_base_nodelet_manager (nodelet/nodelet)
    robot_state_publisher (robot_state_publisher/robot_state_publisher)
    spawn_turtlebot_model (gazebo_ros/spawn_model)

auto-starting new master
process[master]: started with pid [26062]
ROS_MASTER_URI=http://zzl-Legion:13507/

setting /run_id to 49d923e0-4274-11e9-b663-935f6d670359
process[rosout-1]: started with pid [26086]
started core service [/rosout]
process[gazebo-2]: started with pid [26089]
process[spawn_turtlebot_model-3]: started with pid [26090]
process[mobile_base_nodelet_manager-4]: started with pid [26097]
process[cmd_vel_mux-5]: started with pid [26112]
process[bumper2pointcloud-6]: started with pid [26116]
process[robot_state_publisher-7]: started with pid [26118]
Gazebo multi-robot simulator, version 7.14.0
Copyright (C) 2012 Open Source Robotics Foundation.
Released under the Apache 2 License.
http://gazebosim.org

[libprotobuf FATAL google/protobuf/stubs/common.cc:61] This program requires version 3.6.1 of the Protocol Buffer runtime library, but the installed version is 2.6.1.  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in "google/protobuf/any.pb.cc".)
terminate called after throwing an instance of 'google::protobuf::FatalException'
  what():  This program requires version 3.6.1 of the Protocol Buffer runtime library, but the installed version is 2.6.1.  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in "google/protobuf/any.pb.cc".)
Aborted (core dumped)
[gazebo-2] process has died [pid 26089, exit code 134, cmd /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/gazebo_ros_pkgs/gazebo_ros/scripts/gzserver --verbose -e ode /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/../assets/worlds/circuit2.world __name:=gazebo __log:=/home/zzl/.ros/log/49d923e0-4274-11e9-b663-935f6d670359/gazebo-2.log].
log file: /home/zzl/.ros/log/49d923e0-4274-11e9-b663-935f6d670359/gazebo-2*.log







if you want to reinstall gazebo7, you must make sure to install all of the package of gazebo7:

gazebo7 gazebo7-plugin-base libgazebo7 libgazebo7-dev libignition-math2
  libignition-math2-dev libsdformat4 libsdformat4-dev ros-kinetic-desktop-full
  ros-kinetic-gazebo-dev ros-kinetic-gazebo-plugins ros-kinetic-gazebo-ros
  ros-kinetic-gazebo-ros-pkgs ros-kinetic-simulators

don't forget to install below:
sudo apt-get install ros-kinetic-gazebo-ros gmapping slam-karto amcl



# it will remove gazebo7 and its responsibility
sudo apt-get install libignition-math3 libsdformat5
sudo apt-get install gazebo8 libgazebo8
sudo apt-get install ros-kinetic-gazebo8-*



open gazebo

1. source turtlebot_setup.bash
2. export GAZEBO_MASTER_URI=http://localhost:
3. gzclient


cd examples/utilities
python display_plot.py










ftdi-eeprom libavahi-client-dev libavahi-common-dev libavahi-core-dev libavdevice-dev
  libavfilter-dev libavresample-dev libccd-dev libccd2 libconfuse-common libconfuse0
  libfcl0.5 libftdi1-2 libignition-msgs0 libignition-transport3 libjemalloc1
  libpostproc-dev libqwt-headers libqwt-qt5-6 libqwt-qt5-dev libvtk5.10 libzmq3-dev
  linux-headers-4.15.0-43 linux-headers-4.15.0-43-generic linux-image-4.15.0-43-generic
  linux-modules-4.15.0-43-generic linux-modules-extra-4.15.0-43-generic python-bluez
  python-cwiid python-pyassimp redis-server redis-tools tcl-vtk




# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/zzl/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/zzl/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/zzl/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate srnn
    else
        \export PATH="/home/zzl/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

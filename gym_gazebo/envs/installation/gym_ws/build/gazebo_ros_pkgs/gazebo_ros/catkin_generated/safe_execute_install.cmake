execute_process(COMMAND "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/gazebo_ros_pkgs/gazebo_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/gazebo_ros_pkgs/gazebo_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

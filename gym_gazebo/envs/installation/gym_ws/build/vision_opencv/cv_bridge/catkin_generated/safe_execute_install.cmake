execute_process(COMMAND "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/vision_opencv/cv_bridge/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/vision_opencv/cv_bridge/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

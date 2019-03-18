# Install script for directory: /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install" TYPE PROGRAM FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install" TYPE PROGRAM FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/install" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/gtest/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_common/baxter_common/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_common/baxter_description/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter/baxter_sdk/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_simulator/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_common/rethink_ee_description/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_common/baxter_maintenance_msgs/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_common/baxter_core_msgs/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_interface/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_sim_io/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_tools/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_sim_controllers/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_gazebo/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_sim_kinematics/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_sim_hardware/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_sim_examples/cmake_install.cmake")
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_examples/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

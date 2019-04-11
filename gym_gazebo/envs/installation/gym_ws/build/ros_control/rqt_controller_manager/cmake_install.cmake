# Install script for directory: /home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ros_control/rqt_controller_manager

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/install")
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
  include("/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ros_control/rqt_controller_manager/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ros_control/rqt_controller_manager/catkin_generated/installspace/rqt_controller_manager.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rqt_controller_manager/cmake" TYPE FILE FILES
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ros_control/rqt_controller_manager/catkin_generated/installspace/rqt_controller_managerConfig.cmake"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ros_control/rqt_controller_manager/catkin_generated/installspace/rqt_controller_managerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rqt_controller_manager" TYPE FILE FILES "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ros_control/rqt_controller_manager/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rqt_controller_manager" TYPE DIRECTORY FILES "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ros_control/rqt_controller_manager/plugins")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rqt_controller_manager" TYPE PROGRAM FILES "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ros_control/rqt_controller_manager/scripts/rqt_controller_manager")
endif()


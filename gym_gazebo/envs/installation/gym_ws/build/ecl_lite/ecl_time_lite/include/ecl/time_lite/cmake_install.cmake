# Install script for directory: /home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/time_lite" TYPE FILE FILES
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/date.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/functions_pos.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/cpu_time.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/functions.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/types_win.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/functions_rt.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/types_pos.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/errors.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/functions_mac.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/functions_win.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/types.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_time_lite/include/ecl/time_lite/macros.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/time_lite" TYPE FILE FILES "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/devel/include/ecl/time_lite/config.hpp")
endif()


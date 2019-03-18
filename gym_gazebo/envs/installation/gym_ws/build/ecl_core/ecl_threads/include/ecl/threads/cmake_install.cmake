# Install script for directory: /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/threads" TYPE FILE FILES
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/macros.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/thread_exceptions_pos.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/priority.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/threadable.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/thread_win.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/priority_common.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/thread_pos.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/mutex_pos.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/mutex.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/priority_win.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/thread.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/mutex_w32.hpp"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_threads/include/ecl/threads/priority_pos.hpp"
    )
endif()


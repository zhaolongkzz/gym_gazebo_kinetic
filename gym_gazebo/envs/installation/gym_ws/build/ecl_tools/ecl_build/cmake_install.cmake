# Install script for directory: /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_tools/ecl_build

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ecl_tools/ecl_build/catkin_generated/installspace/ecl_build.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_build/cmake" TYPE FILE FILES
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_tools/ecl_build/cmake/ecl_platform_detection.cmake"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_tools/ecl_build/cmake/ecl_package.cmake"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_tools/ecl_build/cmake/ecl_find_sse.cmake"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_tools/ecl_build/cmake/ecl_build_utilities.cmake"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_tools/ecl_build/cmake/ecl_cx11.cmake"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_tools/ecl_build/cmake/cotire.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_build/cmake" TYPE FILE FILES
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ecl_tools/ecl_build/catkin_generated/installspace/ecl_buildConfig.cmake"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ecl_tools/ecl_build/catkin_generated/installspace/ecl_buildConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_build" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_tools/ecl_build/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_build" TYPE DIRECTORY FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_tools/ecl_build/cmake")
endif()


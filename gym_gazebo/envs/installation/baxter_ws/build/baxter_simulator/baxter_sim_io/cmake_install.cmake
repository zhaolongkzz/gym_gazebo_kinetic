# Install script for directory: /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/src/baxter_simulator/baxter_sim_io

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_sim_io/catkin_generated/installspace/baxter_sim_io.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/baxter_sim_io/cmake" TYPE FILE FILES
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_sim_io/catkin_generated/installspace/baxter_sim_ioConfig.cmake"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/build/baxter_simulator/baxter_sim_io/catkin_generated/installspace/baxter_sim_ioConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/baxter_sim_io" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/src/baxter_simulator/baxter_sim_io/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/baxter_sim_io/baxter_sim_io" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/baxter_sim_io/baxter_sim_io")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/baxter_sim_io/baxter_sim_io"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/baxter_sim_io" TYPE EXECUTABLE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/devel/lib/baxter_sim_io/baxter_sim_io")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/baxter_sim_io/baxter_sim_io" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/baxter_sim_io/baxter_sim_io")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/baxter_sim_io/baxter_sim_io"
         OLD_RPATH "/home/zzl/anaconda3/envs/gym/lib:/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/baxter_sim_io/baxter_sim_io")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/baxter_sim_io" TYPE DIRECTORY FILES
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/src/baxter_simulator/baxter_sim_io/include"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/src/baxter_simulator/baxter_sim_io/resources"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/baxter_ws/src/baxter_simulator/baxter_sim_io/ui"
    )
endif()


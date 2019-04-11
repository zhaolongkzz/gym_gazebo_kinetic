# Install script for directory: /home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_io

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ecl_lite/ecl_io/catkin_generated/installspace/ecl_io.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_io/cmake" TYPE FILE FILES
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ecl_lite/ecl_io/catkin_generated/installspace/ecl_ioConfig.cmake"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ecl_lite/ecl_io/catkin_generated/installspace/ecl_ioConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ecl_io" TYPE FILE FILES "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_lite/ecl_io/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ecl_lite/ecl_io/include/cmake_install.cmake")
  include("/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ecl_lite/ecl_io/src/cmake_install.cmake")

endif()


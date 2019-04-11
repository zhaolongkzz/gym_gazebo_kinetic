# Install script for directory: /home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_exceptions/include/ecl/exceptions

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/exceptions" TYPE FILE FILES
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_exceptions/include/ecl/exceptions/data_exception.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_exceptions/include/ecl/exceptions/exception.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_exceptions/include/ecl/exceptions/standard_exception.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_exceptions/include/ecl/exceptions/posix_error_handler.hpp"
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ecl_core/ecl_exceptions/include/ecl/exceptions/macros.hpp"
    )
endif()


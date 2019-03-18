# Install script for directory: /home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite

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
  include("/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/kobuki/kobuki_testsuite/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/kobuki/kobuki_testsuite/catkin_generated/installspace/kobuki_testsuite.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_testsuite/cmake" TYPE FILE FILES
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/kobuki/kobuki_testsuite/catkin_generated/installspace/kobuki_testsuiteConfig.cmake"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/kobuki/kobuki_testsuite/catkin_generated/installspace/kobuki_testsuiteConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_testsuite" TYPE FILE FILES "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/kobuki_testsuite" TYPE PROGRAM FILES
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/inf_rotation.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_analog_input.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_battery_voltage.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_events.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_gyro.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_led_array.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_rotation.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_sounds.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/scan_angle.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_battery"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_digital_output.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_external_power.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_input.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_output.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_safewandering.py"
    "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/kobuki/kobuki_testsuite/scripts/test_translation.py"
    )
endif()


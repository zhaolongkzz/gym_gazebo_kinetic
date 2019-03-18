# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "control_toolbox: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(control_toolbox_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv" NAME_WE)
add_custom_target(_control_toolbox_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "control_toolbox" "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(control_toolbox
  "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/control_toolbox
)

### Generating Module File
_generate_module_cpp(control_toolbox
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/control_toolbox
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(control_toolbox_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(control_toolbox_generate_messages control_toolbox_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv" NAME_WE)
add_dependencies(control_toolbox_generate_messages_cpp _control_toolbox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_toolbox_gencpp)
add_dependencies(control_toolbox_gencpp control_toolbox_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_toolbox_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(control_toolbox
  "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/control_toolbox
)

### Generating Module File
_generate_module_eus(control_toolbox
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/control_toolbox
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(control_toolbox_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(control_toolbox_generate_messages control_toolbox_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv" NAME_WE)
add_dependencies(control_toolbox_generate_messages_eus _control_toolbox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_toolbox_geneus)
add_dependencies(control_toolbox_geneus control_toolbox_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_toolbox_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(control_toolbox
  "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/control_toolbox
)

### Generating Module File
_generate_module_lisp(control_toolbox
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/control_toolbox
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(control_toolbox_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(control_toolbox_generate_messages control_toolbox_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv" NAME_WE)
add_dependencies(control_toolbox_generate_messages_lisp _control_toolbox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_toolbox_genlisp)
add_dependencies(control_toolbox_genlisp control_toolbox_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_toolbox_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(control_toolbox
  "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/control_toolbox
)

### Generating Module File
_generate_module_nodejs(control_toolbox
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/control_toolbox
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(control_toolbox_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(control_toolbox_generate_messages control_toolbox_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv" NAME_WE)
add_dependencies(control_toolbox_generate_messages_nodejs _control_toolbox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_toolbox_gennodejs)
add_dependencies(control_toolbox_gennodejs control_toolbox_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_toolbox_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(control_toolbox
  "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_toolbox
)

### Generating Module File
_generate_module_py(control_toolbox
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_toolbox
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(control_toolbox_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(control_toolbox_generate_messages control_toolbox_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/RL/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/control_toolbox/srv/SetPidGains.srv" NAME_WE)
add_dependencies(control_toolbox_generate_messages_py _control_toolbox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_toolbox_genpy)
add_dependencies(control_toolbox_genpy control_toolbox_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_toolbox_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/control_toolbox)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/control_toolbox
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(control_toolbox_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/control_toolbox)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/control_toolbox
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(control_toolbox_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/control_toolbox)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/control_toolbox
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(control_toolbox_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/control_toolbox)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/control_toolbox
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(control_toolbox_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_toolbox)
  install(CODE "execute_process(COMMAND \"/home/zzl/anaconda3/envs/gym/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_toolbox\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_toolbox
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(control_toolbox_generate_messages_py std_msgs_generate_messages_py)
endif()

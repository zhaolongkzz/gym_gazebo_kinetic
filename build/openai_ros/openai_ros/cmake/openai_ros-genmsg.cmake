# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "openai_ros: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iopenai_ros:/home/zzl/gym_ws/src/openai_ros/openai_ros/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(openai_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg" NAME_WE)
add_custom_target(_openai_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "openai_ros" "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(openai_ros
  "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openai_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(openai_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openai_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(openai_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(openai_ros_generate_messages openai_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg" NAME_WE)
add_dependencies(openai_ros_generate_messages_cpp _openai_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openai_ros_gencpp)
add_dependencies(openai_ros_gencpp openai_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openai_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(openai_ros
  "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openai_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(openai_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openai_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(openai_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(openai_ros_generate_messages openai_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg" NAME_WE)
add_dependencies(openai_ros_generate_messages_eus _openai_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openai_ros_geneus)
add_dependencies(openai_ros_geneus openai_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openai_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(openai_ros
  "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openai_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(openai_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openai_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(openai_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(openai_ros_generate_messages openai_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg" NAME_WE)
add_dependencies(openai_ros_generate_messages_lisp _openai_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openai_ros_genlisp)
add_dependencies(openai_ros_genlisp openai_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openai_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(openai_ros
  "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openai_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(openai_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openai_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(openai_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(openai_ros_generate_messages openai_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg" NAME_WE)
add_dependencies(openai_ros_generate_messages_nodejs _openai_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openai_ros_gennodejs)
add_dependencies(openai_ros_gennodejs openai_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openai_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(openai_ros
  "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openai_ros
)

### Generating Services

### Generating Module File
_generate_module_py(openai_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openai_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(openai_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(openai_ros_generate_messages openai_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zzl/gym_ws/src/openai_ros/openai_ros/msg/RLExperimentInfo.msg" NAME_WE)
add_dependencies(openai_ros_generate_messages_py _openai_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(openai_ros_genpy)
add_dependencies(openai_ros_genpy openai_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS openai_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openai_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/openai_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(openai_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openai_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/openai_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(openai_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openai_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/openai_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(openai_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openai_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/openai_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(openai_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openai_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openai_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openai_ros
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openai_ros
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/openai_ros/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(openai_ros_generate_messages_py std_msgs_generate_messages_py)
endif()

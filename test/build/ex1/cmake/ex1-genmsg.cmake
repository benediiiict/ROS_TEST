# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ex1: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iex1:/home/ben/test/src/ex1/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ex1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ben/test/src/ex1/msg/my_msg.msg" NAME_WE)
add_custom_target(_ex1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ex1" "/home/ben/test/src/ex1/msg/my_msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ex1
  "/home/ben/test/src/ex1/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ex1
)

### Generating Services

### Generating Module File
_generate_module_cpp(ex1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ex1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ex1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ex1_generate_messages ex1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/test/src/ex1/msg/my_msg.msg" NAME_WE)
add_dependencies(ex1_generate_messages_cpp _ex1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ex1_gencpp)
add_dependencies(ex1_gencpp ex1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ex1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ex1
  "/home/ben/test/src/ex1/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ex1
)

### Generating Services

### Generating Module File
_generate_module_eus(ex1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ex1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ex1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ex1_generate_messages ex1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/test/src/ex1/msg/my_msg.msg" NAME_WE)
add_dependencies(ex1_generate_messages_eus _ex1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ex1_geneus)
add_dependencies(ex1_geneus ex1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ex1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ex1
  "/home/ben/test/src/ex1/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ex1
)

### Generating Services

### Generating Module File
_generate_module_lisp(ex1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ex1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ex1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ex1_generate_messages ex1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/test/src/ex1/msg/my_msg.msg" NAME_WE)
add_dependencies(ex1_generate_messages_lisp _ex1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ex1_genlisp)
add_dependencies(ex1_genlisp ex1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ex1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ex1
  "/home/ben/test/src/ex1/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ex1
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ex1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ex1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ex1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ex1_generate_messages ex1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/test/src/ex1/msg/my_msg.msg" NAME_WE)
add_dependencies(ex1_generate_messages_nodejs _ex1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ex1_gennodejs)
add_dependencies(ex1_gennodejs ex1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ex1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ex1
  "/home/ben/test/src/ex1/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ex1
)

### Generating Services

### Generating Module File
_generate_module_py(ex1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ex1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ex1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ex1_generate_messages ex1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ben/test/src/ex1/msg/my_msg.msg" NAME_WE)
add_dependencies(ex1_generate_messages_py _ex1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ex1_genpy)
add_dependencies(ex1_genpy ex1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ex1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ex1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ex1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ex1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ex1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ex1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ex1_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ex1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ex1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ex1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ex1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ex1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ex1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ex1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ex1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ex1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ex1_generate_messages_py std_msgs_generate_messages_py)
endif()

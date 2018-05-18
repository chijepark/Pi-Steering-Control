# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "con_esc: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icon_esc:/home/pi/HW/control_esc/src/con_esc/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(con_esc_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg" NAME_WE)
add_custom_target(_con_esc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "con_esc" "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(con_esc
  "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/con_esc
)

### Generating Services

### Generating Module File
_generate_module_cpp(con_esc
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/con_esc
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(con_esc_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(con_esc_generate_messages con_esc_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg" NAME_WE)
add_dependencies(con_esc_generate_messages_cpp _con_esc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(con_esc_gencpp)
add_dependencies(con_esc_gencpp con_esc_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS con_esc_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(con_esc
  "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/con_esc
)

### Generating Services

### Generating Module File
_generate_module_eus(con_esc
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/con_esc
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(con_esc_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(con_esc_generate_messages con_esc_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg" NAME_WE)
add_dependencies(con_esc_generate_messages_eus _con_esc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(con_esc_geneus)
add_dependencies(con_esc_geneus con_esc_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS con_esc_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(con_esc
  "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/con_esc
)

### Generating Services

### Generating Module File
_generate_module_lisp(con_esc
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/con_esc
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(con_esc_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(con_esc_generate_messages con_esc_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg" NAME_WE)
add_dependencies(con_esc_generate_messages_lisp _con_esc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(con_esc_genlisp)
add_dependencies(con_esc_genlisp con_esc_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS con_esc_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(con_esc
  "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/con_esc
)

### Generating Services

### Generating Module File
_generate_module_nodejs(con_esc
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/con_esc
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(con_esc_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(con_esc_generate_messages con_esc_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg" NAME_WE)
add_dependencies(con_esc_generate_messages_nodejs _con_esc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(con_esc_gennodejs)
add_dependencies(con_esc_gennodejs con_esc_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS con_esc_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(con_esc
  "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/con_esc
)

### Generating Services

### Generating Module File
_generate_module_py(con_esc
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/con_esc
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(con_esc_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(con_esc_generate_messages con_esc_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/HW/control_esc/src/con_esc/msg/MsgControl.msg" NAME_WE)
add_dependencies(con_esc_generate_messages_py _con_esc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(con_esc_genpy)
add_dependencies(con_esc_genpy con_esc_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS con_esc_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/con_esc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/con_esc
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(con_esc_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/con_esc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/con_esc
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(con_esc_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/con_esc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/con_esc
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(con_esc_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/con_esc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/con_esc
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(con_esc_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/con_esc)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/con_esc\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/con_esc
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(con_esc_generate_messages_py std_msgs_generate_messages_py)
endif()

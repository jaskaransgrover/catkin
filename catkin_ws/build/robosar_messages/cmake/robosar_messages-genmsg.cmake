# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robosar_messages: 1 messages, 3 services")

set(MSG_I_FLAGS "-Irobosar_messages:/home/jaskaran/catkin_ws/src/robosar_messages/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robosar_messages_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg" NAME_WE)
add_custom_target(_robosar_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosar_messages" "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg" ""
)

get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv" NAME_WE)
add_custom_target(_robosar_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosar_messages" "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv" ""
)

get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv" NAME_WE)
add_custom_target(_robosar_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosar_messages" "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv" "geometry_msgs/Pose:nav_msgs/MapMetaData:geometry_msgs/Quaternion:nav_msgs/OccupancyGrid:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv" NAME_WE)
add_custom_target(_robosar_messages_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robosar_messages" "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosar_messages
)

### Generating Services
_generate_srv_cpp(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosar_messages
)
_generate_srv_cpp(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosar_messages
)
_generate_srv_cpp(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosar_messages
)

### Generating Module File
_generate_module_cpp(robosar_messages
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosar_messages
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robosar_messages_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robosar_messages_generate_messages robosar_messages_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg" NAME_WE)
add_dependencies(robosar_messages_generate_messages_cpp _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_cpp _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_cpp _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_cpp _robosar_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosar_messages_gencpp)
add_dependencies(robosar_messages_gencpp robosar_messages_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosar_messages_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosar_messages
)

### Generating Services
_generate_srv_eus(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosar_messages
)
_generate_srv_eus(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosar_messages
)
_generate_srv_eus(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosar_messages
)

### Generating Module File
_generate_module_eus(robosar_messages
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosar_messages
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robosar_messages_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robosar_messages_generate_messages robosar_messages_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg" NAME_WE)
add_dependencies(robosar_messages_generate_messages_eus _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_eus _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_eus _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_eus _robosar_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosar_messages_geneus)
add_dependencies(robosar_messages_geneus robosar_messages_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosar_messages_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosar_messages
)

### Generating Services
_generate_srv_lisp(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosar_messages
)
_generate_srv_lisp(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosar_messages
)
_generate_srv_lisp(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosar_messages
)

### Generating Module File
_generate_module_lisp(robosar_messages
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosar_messages
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robosar_messages_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robosar_messages_generate_messages robosar_messages_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg" NAME_WE)
add_dependencies(robosar_messages_generate_messages_lisp _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_lisp _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_lisp _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_lisp _robosar_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosar_messages_genlisp)
add_dependencies(robosar_messages_genlisp robosar_messages_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosar_messages_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosar_messages
)

### Generating Services
_generate_srv_nodejs(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosar_messages
)
_generate_srv_nodejs(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosar_messages
)
_generate_srv_nodejs(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosar_messages
)

### Generating Module File
_generate_module_nodejs(robosar_messages
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosar_messages
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robosar_messages_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robosar_messages_generate_messages robosar_messages_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg" NAME_WE)
add_dependencies(robosar_messages_generate_messages_nodejs _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_nodejs _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_nodejs _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_nodejs _robosar_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosar_messages_gennodejs)
add_dependencies(robosar_messages_gennodejs robosar_messages_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosar_messages_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosar_messages
)

### Generating Services
_generate_srv_py(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosar_messages
)
_generate_srv_py(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosar_messages
)
_generate_srv_py(robosar_messages
  "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosar_messages
)

### Generating Module File
_generate_module_py(robosar_messages
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosar_messages
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robosar_messages_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robosar_messages_generate_messages robosar_messages_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/msg/task_allocation.msg" NAME_WE)
add_dependencies(robosar_messages_generate_messages_py _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/agent_status.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_py _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/taskgen_getwaypts.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_py _robosar_messages_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/robosar_messages/srv/sys_odom_reset.srv" NAME_WE)
add_dependencies(robosar_messages_generate_messages_py _robosar_messages_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robosar_messages_genpy)
add_dependencies(robosar_messages_genpy robosar_messages_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robosar_messages_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosar_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robosar_messages
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robosar_messages_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(robosar_messages_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosar_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robosar_messages
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robosar_messages_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(robosar_messages_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosar_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robosar_messages
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robosar_messages_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(robosar_messages_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosar_messages)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robosar_messages
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robosar_messages_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(robosar_messages_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosar_messages)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosar_messages\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robosar_messages
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robosar_messages_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(robosar_messages_generate_messages_py nav_msgs_generate_messages_py)
endif()

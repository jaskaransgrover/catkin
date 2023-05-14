# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "khepera_communicator: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ikhepera_communicator:/home/jaskaran/catkin_ws/src/khepera_communicator/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(khepera_communicator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg" NAME_WE)
add_custom_target(_khepera_communicator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "khepera_communicator" "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg" ""
)

get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg" NAME_WE)
add_custom_target(_khepera_communicator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "khepera_communicator" "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg" ""
)

get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg" NAME_WE)
add_custom_target(_khepera_communicator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "khepera_communicator" "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg" ""
)

get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg" NAME_WE)
add_custom_target(_khepera_communicator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "khepera_communicator" "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg" ""
)

get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg" NAME_WE)
add_custom_target(_khepera_communicator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "khepera_communicator" "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg" ""
)

get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg" NAME_WE)
add_custom_target(_khepera_communicator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "khepera_communicator" "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg" ""
)

get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg" NAME_WE)
add_custom_target(_khepera_communicator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "khepera_communicator" "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_cpp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_cpp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_cpp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_cpp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_cpp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_cpp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator
)

### Generating Services

### Generating Module File
_generate_module_cpp(khepera_communicator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(khepera_communicator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(khepera_communicator_generate_messages khepera_communicator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_cpp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_cpp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_cpp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_cpp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_cpp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_cpp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_cpp _khepera_communicator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(khepera_communicator_gencpp)
add_dependencies(khepera_communicator_gencpp khepera_communicator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS khepera_communicator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator
)
_generate_msg_eus(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator
)
_generate_msg_eus(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator
)
_generate_msg_eus(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator
)
_generate_msg_eus(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator
)
_generate_msg_eus(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator
)
_generate_msg_eus(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator
)

### Generating Services

### Generating Module File
_generate_module_eus(khepera_communicator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(khepera_communicator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(khepera_communicator_generate_messages khepera_communicator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_eus _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_eus _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_eus _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_eus _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_eus _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_eus _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_eus _khepera_communicator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(khepera_communicator_geneus)
add_dependencies(khepera_communicator_geneus khepera_communicator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS khepera_communicator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_lisp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_lisp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_lisp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_lisp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_lisp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator
)
_generate_msg_lisp(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator
)

### Generating Services

### Generating Module File
_generate_module_lisp(khepera_communicator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(khepera_communicator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(khepera_communicator_generate_messages khepera_communicator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_lisp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_lisp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_lisp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_lisp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_lisp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_lisp _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_lisp _khepera_communicator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(khepera_communicator_genlisp)
add_dependencies(khepera_communicator_genlisp khepera_communicator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS khepera_communicator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator
)
_generate_msg_nodejs(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator
)
_generate_msg_nodejs(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator
)
_generate_msg_nodejs(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator
)
_generate_msg_nodejs(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator
)
_generate_msg_nodejs(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator
)
_generate_msg_nodejs(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator
)

### Generating Services

### Generating Module File
_generate_module_nodejs(khepera_communicator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(khepera_communicator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(khepera_communicator_generate_messages khepera_communicator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_nodejs _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_nodejs _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_nodejs _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_nodejs _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_nodejs _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_nodejs _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_nodejs _khepera_communicator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(khepera_communicator_gennodejs)
add_dependencies(khepera_communicator_gennodejs khepera_communicator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS khepera_communicator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator
)
_generate_msg_py(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator
)
_generate_msg_py(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator
)
_generate_msg_py(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator
)
_generate_msg_py(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator
)
_generate_msg_py(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator
)
_generate_msg_py(khepera_communicator
  "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator
)

### Generating Services

### Generating Module File
_generate_module_py(khepera_communicator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(khepera_communicator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(khepera_communicator_generate_messages khepera_communicator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/K4_controls.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_py _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Acc.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_py _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Gyro.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_py _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_POS.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_py _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Encoder_SPD.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_py _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/Time.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_py _khepera_communicator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jaskaran/catkin_ws/src/khepera_communicator/msg/SensorReadings.msg" NAME_WE)
add_dependencies(khepera_communicator_generate_messages_py _khepera_communicator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(khepera_communicator_genpy)
add_dependencies(khepera_communicator_genpy khepera_communicator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS khepera_communicator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/khepera_communicator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(khepera_communicator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/khepera_communicator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(khepera_communicator_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/khepera_communicator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(khepera_communicator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/khepera_communicator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(khepera_communicator_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/khepera_communicator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(khepera_communicator_generate_messages_py std_msgs_generate_messages_py)
endif()

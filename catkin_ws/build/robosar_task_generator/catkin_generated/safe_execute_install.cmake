execute_process(COMMAND "/home/jaskaran/catkin_ws/build/robosar_task_generator/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/jaskaran/catkin_ws/build/robosar_task_generator/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

execute_process(COMMAND "/home/saif/workspace/test_pcl/build/aml_perception/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/saif/workspace/test_pcl/build/aml_perception/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

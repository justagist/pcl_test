# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "aml_perception: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(aml_perception_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_aml_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aml_perception" "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(aml_perception
  "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aml_perception
)

### Generating Module File
_generate_module_cpp(aml_perception
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aml_perception
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(aml_perception_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(aml_perception_generate_messages aml_perception_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(aml_perception_generate_messages_cpp _aml_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aml_perception_gencpp)
add_dependencies(aml_perception_gencpp aml_perception_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aml_perception_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(aml_perception
  "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aml_perception
)

### Generating Module File
_generate_module_eus(aml_perception
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aml_perception
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(aml_perception_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(aml_perception_generate_messages aml_perception_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(aml_perception_generate_messages_eus _aml_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aml_perception_geneus)
add_dependencies(aml_perception_geneus aml_perception_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aml_perception_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(aml_perception
  "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aml_perception
)

### Generating Module File
_generate_module_lisp(aml_perception
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aml_perception
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(aml_perception_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(aml_perception_generate_messages aml_perception_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(aml_perception_generate_messages_lisp _aml_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aml_perception_genlisp)
add_dependencies(aml_perception_genlisp aml_perception_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aml_perception_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(aml_perception
  "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aml_perception
)

### Generating Module File
_generate_module_nodejs(aml_perception
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aml_perception
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(aml_perception_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(aml_perception_generate_messages aml_perception_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(aml_perception_generate_messages_nodejs _aml_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aml_perception_gennodejs)
add_dependencies(aml_perception_gennodejs aml_perception_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aml_perception_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(aml_perception
  "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aml_perception
)

### Generating Module File
_generate_module_py(aml_perception
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aml_perception
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(aml_perception_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(aml_perception_generate_messages aml_perception_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saif/workspace/test_pcl/src/aml_perception/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(aml_perception_generate_messages_py _aml_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aml_perception_genpy)
add_dependencies(aml_perception_genpy aml_perception_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aml_perception_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aml_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aml_perception
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(aml_perception_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aml_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aml_perception
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(aml_perception_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aml_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aml_perception
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(aml_perception_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aml_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aml_perception
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(aml_perception_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aml_perception)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aml_perception\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aml_perception
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aml_perception
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aml_perception/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(aml_perception_generate_messages_py std_msgs_generate_messages_py)
endif()

cmake_minimum_required(VERSION 2.8.3)
project(aml_services)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  sensor_msgs
  message_generation
)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

# PCL ########################## PCL (apparently) links the required BOOST libraries and Eigen3 also
find_package(PCL REQUIRED)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})
################################

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


# catkin_python_setup()

SET(PROJECT_INCLUDE ${PROJECT_SOURCE_DIR}/include)
SET(PROJECT_CODE_SOURCE ${PROJECT_SOURCE_DIR}/src/aml_services)
# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
  ${PROJECT_INCLUDE}
  ${PROJECT_SOURCE_DIR}
)

add_message_files(
  FILES
  PCLCustomMsg.msg
)

add_service_files(
  FILES
  PCLUtility.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs  
  sensor_msgs # and/or other packages containing depended messages
  aml_services
)


SET(LINK_LIBS ${PCL_LIBRARIES})

SET(PROJ_LIBS ${PROJECT_CODE_SOURCE}/pcl_processing.cpp)
              # ${PROJECT_CODE_SOURCE}/pcl_utils_server.cpp)

add_library(proj_libs STATIC ${PROJ_LIBS})

#############
## Install ##
#############
# add_executable(run_file ${PROJECT_CODE_SOURCE}/test_pcl.cpp)
# target_link_libraries(run_file ${LINK_LIBS} ${catkin_LIBRARIES} proj_libs)

# add_executable(subs ${PROJECT_CODE_SOURCE}/subs.cpp)
# target_link_libraries(subs ${LINK_LIBS} ${catkin_LIBRARIES} proj_libs)

add_executable(pcl_server ${PROJECT_CODE_SOURCE}/pcl_utils_server.cpp)
target_link_libraries(pcl_server ${LINK_LIBS} ${catkin_LIBRARIES} proj_libs)
add_dependencies(pcl_server ${PROJECT_NAME}_generate_messages_cpp)

# add_executable(srvr ${PROJECT_CODE_SOURCE}/test_service.cpp)
# target_link_libraries(srvr ${catkin_LIBRARIES})
# add_dependencies(add_two_ints_server beginner_tutorials_gencpp)

add_executable(clnt ${PROJECT_CODE_SOURCE}/test_client.cpp)
target_link_libraries(clnt ${catkin_LIBRARIES})
add_dependencies(clnt ${PROJECT_NAME}_generate_messages_cpp)
# add_dependencies(add_two_ints_client beginner_tutorials_gencpp)

#install(
#  DIRECTORY scripts/
#  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#  USE_SOURCE_PERMISSIONS
#)




#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_manipulation.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()



## Add folders to be run by python nosetests
# catkin_add_nosetests(test)

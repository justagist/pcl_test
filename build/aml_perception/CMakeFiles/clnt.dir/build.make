# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/saif/workspace/test_pcl/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/saif/workspace/test_pcl/build

# Include any dependencies generated for this target.
include aml_perception/CMakeFiles/clnt.dir/depend.make

# Include the progress variables for this target.
include aml_perception/CMakeFiles/clnt.dir/progress.make

# Include the compile flags for this target's objects.
include aml_perception/CMakeFiles/clnt.dir/flags.make

aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o: aml_perception/CMakeFiles/clnt.dir/flags.make
aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o: /home/saif/workspace/test_pcl/src/aml_perception/src/aml_perception/test_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saif/workspace/test_pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o"
	cd /home/saif/workspace/test_pcl/build/aml_perception && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o -c /home/saif/workspace/test_pcl/src/aml_perception/src/aml_perception/test_client.cpp

aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.i"
	cd /home/saif/workspace/test_pcl/build/aml_perception && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/saif/workspace/test_pcl/src/aml_perception/src/aml_perception/test_client.cpp > CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.i

aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.s"
	cd /home/saif/workspace/test_pcl/build/aml_perception && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/saif/workspace/test_pcl/src/aml_perception/src/aml_perception/test_client.cpp -o CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.s

aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o.requires:

.PHONY : aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o.requires

aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o.provides: aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o.requires
	$(MAKE) -f aml_perception/CMakeFiles/clnt.dir/build.make aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o.provides.build
.PHONY : aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o.provides

aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o.provides.build: aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o


# Object files for target clnt
clnt_OBJECTS = \
"CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o"

# External object files for target clnt
clnt_EXTERNAL_OBJECTS =

/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: aml_perception/CMakeFiles/clnt.dir/build.make
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /opt/ros/kinetic/lib/libroscpp.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /opt/ros/kinetic/lib/librosconsole.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /opt/ros/kinetic/lib/librostime.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /opt/ros/kinetic/lib/libcpp_common.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt: aml_perception/CMakeFiles/clnt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/saif/workspace/test_pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt"
	cd /home/saif/workspace/test_pcl/build/aml_perception && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clnt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
aml_perception/CMakeFiles/clnt.dir/build: /home/saif/workspace/test_pcl/devel/lib/aml_perception/clnt

.PHONY : aml_perception/CMakeFiles/clnt.dir/build

aml_perception/CMakeFiles/clnt.dir/requires: aml_perception/CMakeFiles/clnt.dir/src/aml_perception/test_client.cpp.o.requires

.PHONY : aml_perception/CMakeFiles/clnt.dir/requires

aml_perception/CMakeFiles/clnt.dir/clean:
	cd /home/saif/workspace/test_pcl/build/aml_perception && $(CMAKE_COMMAND) -P CMakeFiles/clnt.dir/cmake_clean.cmake
.PHONY : aml_perception/CMakeFiles/clnt.dir/clean

aml_perception/CMakeFiles/clnt.dir/depend:
	cd /home/saif/workspace/test_pcl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/saif/workspace/test_pcl/src /home/saif/workspace/test_pcl/src/aml_perception /home/saif/workspace/test_pcl/build /home/saif/workspace/test_pcl/build/aml_perception /home/saif/workspace/test_pcl/build/aml_perception/CMakeFiles/clnt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : aml_perception/CMakeFiles/clnt.dir/depend


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
include aml_perception/CMakeFiles/proj_libs.dir/depend.make

# Include the progress variables for this target.
include aml_perception/CMakeFiles/proj_libs.dir/progress.make

# Include the compile flags for this target's objects.
include aml_perception/CMakeFiles/proj_libs.dir/flags.make

aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o: aml_perception/CMakeFiles/proj_libs.dir/flags.make
aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o: /home/saif/workspace/test_pcl/src/aml_perception/src/aml_perception/pcl_processing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saif/workspace/test_pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o"
	cd /home/saif/workspace/test_pcl/build/aml_perception && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o -c /home/saif/workspace/test_pcl/src/aml_perception/src/aml_perception/pcl_processing.cpp

aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.i"
	cd /home/saif/workspace/test_pcl/build/aml_perception && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/saif/workspace/test_pcl/src/aml_perception/src/aml_perception/pcl_processing.cpp > CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.i

aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.s"
	cd /home/saif/workspace/test_pcl/build/aml_perception && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/saif/workspace/test_pcl/src/aml_perception/src/aml_perception/pcl_processing.cpp -o CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.s

aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o.requires:

.PHONY : aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o.requires

aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o.provides: aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o.requires
	$(MAKE) -f aml_perception/CMakeFiles/proj_libs.dir/build.make aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o.provides.build
.PHONY : aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o.provides

aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o.provides.build: aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o


# Object files for target proj_libs
proj_libs_OBJECTS = \
"CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o"

# External object files for target proj_libs
proj_libs_EXTERNAL_OBJECTS =

/home/saif/workspace/test_pcl/devel/lib/libproj_libs.a: aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o
/home/saif/workspace/test_pcl/devel/lib/libproj_libs.a: aml_perception/CMakeFiles/proj_libs.dir/build.make
/home/saif/workspace/test_pcl/devel/lib/libproj_libs.a: aml_perception/CMakeFiles/proj_libs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/saif/workspace/test_pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/saif/workspace/test_pcl/devel/lib/libproj_libs.a"
	cd /home/saif/workspace/test_pcl/build/aml_perception && $(CMAKE_COMMAND) -P CMakeFiles/proj_libs.dir/cmake_clean_target.cmake
	cd /home/saif/workspace/test_pcl/build/aml_perception && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/proj_libs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
aml_perception/CMakeFiles/proj_libs.dir/build: /home/saif/workspace/test_pcl/devel/lib/libproj_libs.a

.PHONY : aml_perception/CMakeFiles/proj_libs.dir/build

aml_perception/CMakeFiles/proj_libs.dir/requires: aml_perception/CMakeFiles/proj_libs.dir/src/aml_perception/pcl_processing.cpp.o.requires

.PHONY : aml_perception/CMakeFiles/proj_libs.dir/requires

aml_perception/CMakeFiles/proj_libs.dir/clean:
	cd /home/saif/workspace/test_pcl/build/aml_perception && $(CMAKE_COMMAND) -P CMakeFiles/proj_libs.dir/cmake_clean.cmake
.PHONY : aml_perception/CMakeFiles/proj_libs.dir/clean

aml_perception/CMakeFiles/proj_libs.dir/depend:
	cd /home/saif/workspace/test_pcl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/saif/workspace/test_pcl/src /home/saif/workspace/test_pcl/src/aml_perception /home/saif/workspace/test_pcl/build /home/saif/workspace/test_pcl/build/aml_perception /home/saif/workspace/test_pcl/build/aml_perception/CMakeFiles/proj_libs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : aml_perception/CMakeFiles/proj_libs.dir/depend


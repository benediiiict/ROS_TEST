# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/ben/test/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ben/test/build

# Utility rule file for ex1_gennodejs.

# Include the progress variables for this target.
include ex1/CMakeFiles/ex1_gennodejs.dir/progress.make

ex1_gennodejs: ex1/CMakeFiles/ex1_gennodejs.dir/build.make

.PHONY : ex1_gennodejs

# Rule to build all files generated by this target.
ex1/CMakeFiles/ex1_gennodejs.dir/build: ex1_gennodejs

.PHONY : ex1/CMakeFiles/ex1_gennodejs.dir/build

ex1/CMakeFiles/ex1_gennodejs.dir/clean:
	cd /home/ben/test/build/ex1 && $(CMAKE_COMMAND) -P CMakeFiles/ex1_gennodejs.dir/cmake_clean.cmake
.PHONY : ex1/CMakeFiles/ex1_gennodejs.dir/clean

ex1/CMakeFiles/ex1_gennodejs.dir/depend:
	cd /home/ben/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/test/src /home/ben/test/src/ex1 /home/ben/test/build /home/ben/test/build/ex1 /home/ben/test/build/ex1/CMakeFiles/ex1_gennodejs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ex1/CMakeFiles/ex1_gennodejs.dir/depend

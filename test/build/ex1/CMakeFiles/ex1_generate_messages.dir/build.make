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

# Utility rule file for ex1_generate_messages.

# Include the progress variables for this target.
include ex1/CMakeFiles/ex1_generate_messages.dir/progress.make

ex1_generate_messages: ex1/CMakeFiles/ex1_generate_messages.dir/build.make

.PHONY : ex1_generate_messages

# Rule to build all files generated by this target.
ex1/CMakeFiles/ex1_generate_messages.dir/build: ex1_generate_messages

.PHONY : ex1/CMakeFiles/ex1_generate_messages.dir/build

ex1/CMakeFiles/ex1_generate_messages.dir/clean:
	cd /home/ben/test/build/ex1 && $(CMAKE_COMMAND) -P CMakeFiles/ex1_generate_messages.dir/cmake_clean.cmake
.PHONY : ex1/CMakeFiles/ex1_generate_messages.dir/clean

ex1/CMakeFiles/ex1_generate_messages.dir/depend:
	cd /home/ben/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/test/src /home/ben/test/src/ex1 /home/ben/test/build /home/ben/test/build/ex1 /home/ben/test/build/ex1/CMakeFiles/ex1_generate_messages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ex1/CMakeFiles/ex1_generate_messages.dir/depend


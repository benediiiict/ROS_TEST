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

# Utility rule file for ex2_geneus.

# Include the progress variables for this target.
include ex2/CMakeFiles/ex2_geneus.dir/progress.make

ex2_geneus: ex2/CMakeFiles/ex2_geneus.dir/build.make

.PHONY : ex2_geneus

# Rule to build all files generated by this target.
ex2/CMakeFiles/ex2_geneus.dir/build: ex2_geneus

.PHONY : ex2/CMakeFiles/ex2_geneus.dir/build

ex2/CMakeFiles/ex2_geneus.dir/clean:
	cd /home/ben/test/build/ex2 && $(CMAKE_COMMAND) -P CMakeFiles/ex2_geneus.dir/cmake_clean.cmake
.PHONY : ex2/CMakeFiles/ex2_geneus.dir/clean

ex2/CMakeFiles/ex2_geneus.dir/depend:
	cd /home/ben/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/test/src /home/ben/test/src/ex2 /home/ben/test/build /home/ben/test/build/ex2 /home/ben/test/build/ex2/CMakeFiles/ex2_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ex2/CMakeFiles/ex2_geneus.dir/depend


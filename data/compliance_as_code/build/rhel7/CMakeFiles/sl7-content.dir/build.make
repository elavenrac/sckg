# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/content-0.1.47

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/content-0.1.47/build

# Utility rule file for sl7-content.

# Include the progress variables for this target.
include rhel7/CMakeFiles/sl7-content.dir/progress.make

rhel7/CMakeFiles/sl7-content:

sl7-content: rhel7/CMakeFiles/sl7-content
sl7-content: rhel7/CMakeFiles/sl7-content.dir/build.make
.PHONY : sl7-content

# Rule to build all files generated by this target.
rhel7/CMakeFiles/sl7-content.dir/build: sl7-content
.PHONY : rhel7/CMakeFiles/sl7-content.dir/build

rhel7/CMakeFiles/sl7-content.dir/clean:
	cd /root/content-0.1.47/build/rhel7 && $(CMAKE_COMMAND) -P CMakeFiles/sl7-content.dir/cmake_clean.cmake
.PHONY : rhel7/CMakeFiles/sl7-content.dir/clean

rhel7/CMakeFiles/sl7-content.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/rhel7 /root/content-0.1.47/build /root/content-0.1.47/build/rhel7 /root/content-0.1.47/build/rhel7/CMakeFiles/sl7-content.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhel7/CMakeFiles/sl7-content.dir/depend


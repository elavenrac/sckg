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

# Utility rule file for jre-content.

# Include the progress variables for this target.
include jre/CMakeFiles/jre-content.dir/progress.make

jre/CMakeFiles/jre-content:

jre-content: jre/CMakeFiles/jre-content
jre-content: jre/CMakeFiles/jre-content.dir/build.make
.PHONY : jre-content

# Rule to build all files generated by this target.
jre/CMakeFiles/jre-content.dir/build: jre-content
.PHONY : jre/CMakeFiles/jre-content.dir/build

jre/CMakeFiles/jre-content.dir/clean:
	cd /root/content-0.1.47/build/jre && $(CMAKE_COMMAND) -P CMakeFiles/jre-content.dir/cmake_clean.cmake
.PHONY : jre/CMakeFiles/jre-content.dir/clean

jre/CMakeFiles/jre-content.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/jre /root/content-0.1.47/build /root/content-0.1.47/build/jre /root/content-0.1.47/build/jre/CMakeFiles/jre-content.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : jre/CMakeFiles/jre-content.dir/depend


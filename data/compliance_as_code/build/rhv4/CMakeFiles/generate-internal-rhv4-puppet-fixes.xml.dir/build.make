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

# Utility rule file for generate-internal-rhv4-puppet-fixes.xml.

# Include the progress variables for this target.
include rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/progress.make

rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml: rhv4/puppet-fixes.xml

rhv4/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhv4-content] generating puppet-fixes.xml"
	cd /root/content-0.1.47/build/rhv4 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/rhv4/puppet-fixes.xml /root/content-0.1.47/build/rhv4/fixes/puppet

generate-internal-rhv4-puppet-fixes.xml: rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml
generate-internal-rhv4-puppet-fixes.xml: rhv4/puppet-fixes.xml
generate-internal-rhv4-puppet-fixes.xml: rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/build.make
.PHONY : generate-internal-rhv4-puppet-fixes.xml

# Rule to build all files generated by this target.
rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/build: generate-internal-rhv4-puppet-fixes.xml
.PHONY : rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/build

rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/clean:
	cd /root/content-0.1.47/build/rhv4 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/cmake_clean.cmake
.PHONY : rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/clean

rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/rhv4 /root/content-0.1.47/build /root/content-0.1.47/build/rhv4 /root/content-0.1.47/build/rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhv4/CMakeFiles/generate-internal-rhv4-puppet-fixes.xml.dir/depend


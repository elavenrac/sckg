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

# Utility rule file for generate-internal-templated-content-rhel7.

# Include the progress variables for this target.
include rhel7/CMakeFiles/generate-internal-templated-content-rhel7.dir/progress.make

rhel7/CMakeFiles/generate-internal-templated-content-rhel7: rhel7/templated-content-rhel7

rhel7/templated-content-rhel7: ../build-scripts/build_templated_content.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhel7-content] generating templated content"
	cd /root/content-0.1.47/build/rhel7 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/build_templated_content.py --resolved-rules-dir /root/content-0.1.47/build/rhel7/rules --templates-dir /root/content-0.1.47/shared/templates --checks-dir /root/content-0.1.47/build/rhel7/checks --remediations-dir /root/content-0.1.47/build/rhel7/fixes_from_templates --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/rhel7/product.yml
	cd /root/content-0.1.47/build/rhel7 && /usr/bin/cmake -E touch /root/content-0.1.47/build/rhel7/templated-content-rhel7

generate-internal-templated-content-rhel7: rhel7/CMakeFiles/generate-internal-templated-content-rhel7
generate-internal-templated-content-rhel7: rhel7/templated-content-rhel7
generate-internal-templated-content-rhel7: rhel7/CMakeFiles/generate-internal-templated-content-rhel7.dir/build.make
.PHONY : generate-internal-templated-content-rhel7

# Rule to build all files generated by this target.
rhel7/CMakeFiles/generate-internal-templated-content-rhel7.dir/build: generate-internal-templated-content-rhel7
.PHONY : rhel7/CMakeFiles/generate-internal-templated-content-rhel7.dir/build

rhel7/CMakeFiles/generate-internal-templated-content-rhel7.dir/clean:
	cd /root/content-0.1.47/build/rhel7 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-templated-content-rhel7.dir/cmake_clean.cmake
.PHONY : rhel7/CMakeFiles/generate-internal-templated-content-rhel7.dir/clean

rhel7/CMakeFiles/generate-internal-templated-content-rhel7.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/rhel7 /root/content-0.1.47/build /root/content-0.1.47/build/rhel7 /root/content-0.1.47/build/rhel7/CMakeFiles/generate-internal-templated-content-rhel7.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhel7/CMakeFiles/generate-internal-templated-content-rhel7.dir/depend

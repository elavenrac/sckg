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

# Utility rule file for generate-internal-templated-content-jre.

# Include the progress variables for this target.
include jre/CMakeFiles/generate-internal-templated-content-jre.dir/progress.make

jre/CMakeFiles/generate-internal-templated-content-jre: jre/templated-content-jre

jre/templated-content-jre: ../build-scripts/build_templated_content.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[jre-content] generating templated content"
	cd /root/content-0.1.47/build/jre && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/build_templated_content.py --resolved-rules-dir /root/content-0.1.47/build/jre/rules --templates-dir /root/content-0.1.47/shared/templates --checks-dir /root/content-0.1.47/build/jre/checks --remediations-dir /root/content-0.1.47/build/jre/fixes_from_templates --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/jre/product.yml
	cd /root/content-0.1.47/build/jre && /usr/bin/cmake -E touch /root/content-0.1.47/build/jre/templated-content-jre

generate-internal-templated-content-jre: jre/CMakeFiles/generate-internal-templated-content-jre
generate-internal-templated-content-jre: jre/templated-content-jre
generate-internal-templated-content-jre: jre/CMakeFiles/generate-internal-templated-content-jre.dir/build.make
.PHONY : generate-internal-templated-content-jre

# Rule to build all files generated by this target.
jre/CMakeFiles/generate-internal-templated-content-jre.dir/build: generate-internal-templated-content-jre
.PHONY : jre/CMakeFiles/generate-internal-templated-content-jre.dir/build

jre/CMakeFiles/generate-internal-templated-content-jre.dir/clean:
	cd /root/content-0.1.47/build/jre && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-templated-content-jre.dir/cmake_clean.cmake
.PHONY : jre/CMakeFiles/generate-internal-templated-content-jre.dir/clean

jre/CMakeFiles/generate-internal-templated-content-jre.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/jre /root/content-0.1.47/build /root/content-0.1.47/build/jre /root/content-0.1.47/build/jre/CMakeFiles/generate-internal-templated-content-jre.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : jre/CMakeFiles/generate-internal-templated-content-jre.dir/depend


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

# Utility rule file for generate-internal-rhosp13-puppet-all-fixes.

# Include the progress variables for this target.
include rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/progress.make

rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes: rhosp13/fixes/puppet

rhosp13/fixes/puppet: ../build-scripts/combine_remediations.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] collecting all puppet fixes"
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/combine_remediations.py --resolved-rules-dir /root/content-0.1.47/build/rhosp13/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/rhosp13/product.yml --remediation-type puppet --output-dir /root/content-0.1.47/build/rhosp13/fixes/puppet /root/content-0.1.47/build/rhosp13/fixes_from_templates/shared/puppet /root/content-0.1.47/build/rhosp13/fixes_from_templates/puppet

generate-internal-rhosp13-puppet-all-fixes: rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes
generate-internal-rhosp13-puppet-all-fixes: rhosp13/fixes/puppet
generate-internal-rhosp13-puppet-all-fixes: rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/build.make
.PHONY : generate-internal-rhosp13-puppet-all-fixes

# Rule to build all files generated by this target.
rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/build: generate-internal-rhosp13-puppet-all-fixes
.PHONY : rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/build

rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/clean:
	cd /root/content-0.1.47/build/rhosp13 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/cmake_clean.cmake
.PHONY : rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/clean

rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/rhosp13 /root/content-0.1.47/build /root/content-0.1.47/build/rhosp13 /root/content-0.1.47/build/rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhosp13/CMakeFiles/generate-internal-rhosp13-puppet-all-fixes.dir/depend


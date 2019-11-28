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

# Utility rule file for generate-internal-fedora-anaconda-all-fixes.

# Include the progress variables for this target.
include fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/progress.make

fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes: fedora/fixes/anaconda

fedora/fixes/anaconda: ../build-scripts/combine_remediations.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fedora-content] collecting all anaconda fixes"
	cd /root/content-0.1.47/build/fedora && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/combine_remediations.py --resolved-rules-dir /root/content-0.1.47/build/fedora/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/fedora/product.yml --remediation-type anaconda --output-dir /root/content-0.1.47/build/fedora/fixes/anaconda /root/content-0.1.47/build/fedora/fixes_from_templates/shared/anaconda /root/content-0.1.47/build/fedora/fixes_from_templates/anaconda

generate-internal-fedora-anaconda-all-fixes: fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes
generate-internal-fedora-anaconda-all-fixes: fedora/fixes/anaconda
generate-internal-fedora-anaconda-all-fixes: fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/build.make
.PHONY : generate-internal-fedora-anaconda-all-fixes

# Rule to build all files generated by this target.
fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/build: generate-internal-fedora-anaconda-all-fixes
.PHONY : fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/build

fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/clean:
	cd /root/content-0.1.47/build/fedora && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/cmake_clean.cmake
.PHONY : fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/clean

fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/fedora /root/content-0.1.47/build /root/content-0.1.47/build/fedora /root/content-0.1.47/build/fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fedora/CMakeFiles/generate-internal-fedora-anaconda-all-fixes.dir/depend


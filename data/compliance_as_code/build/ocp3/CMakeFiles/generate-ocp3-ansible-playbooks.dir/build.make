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

# Utility rule file for generate-ocp3-ansible-playbooks.

# Include the progress variables for this target.
include ocp3/CMakeFiles/generate-ocp3-ansible-playbooks.dir/progress.make

ocp3/CMakeFiles/generate-ocp3-ansible-playbooks: ocp3/playbooks

ocp3/playbooks: ocp3/fixes/ansible
ocp3/playbooks: ../build-scripts/build_rule_playbooks.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] Generating Ansible Playbooks"
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/build_rule_playbooks.py --ssg-root /root/content-0.1.47 --product ocp3

ocp3/fixes/ansible: ../build-scripts/combine_remediations.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] collecting all ansible fixes"
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/combine_remediations.py --resolved-rules-dir /root/content-0.1.47/build/ocp3/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/ocp3/product.yml --remediation-type ansible --output-dir /root/content-0.1.47/build/ocp3/fixes/ansible /root/content-0.1.47/build/ocp3/fixes_from_templates/shared/ansible /root/content-0.1.47/build/ocp3/fixes_from_templates/ansible

generate-ocp3-ansible-playbooks: ocp3/CMakeFiles/generate-ocp3-ansible-playbooks
generate-ocp3-ansible-playbooks: ocp3/playbooks
generate-ocp3-ansible-playbooks: ocp3/fixes/ansible
generate-ocp3-ansible-playbooks: ocp3/CMakeFiles/generate-ocp3-ansible-playbooks.dir/build.make
.PHONY : generate-ocp3-ansible-playbooks

# Rule to build all files generated by this target.
ocp3/CMakeFiles/generate-ocp3-ansible-playbooks.dir/build: generate-ocp3-ansible-playbooks
.PHONY : ocp3/CMakeFiles/generate-ocp3-ansible-playbooks.dir/build

ocp3/CMakeFiles/generate-ocp3-ansible-playbooks.dir/clean:
	cd /root/content-0.1.47/build/ocp3 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ocp3-ansible-playbooks.dir/cmake_clean.cmake
.PHONY : ocp3/CMakeFiles/generate-ocp3-ansible-playbooks.dir/clean

ocp3/CMakeFiles/generate-ocp3-ansible-playbooks.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/ocp3 /root/content-0.1.47/build /root/content-0.1.47/build/ocp3 /root/content-0.1.47/build/ocp3/CMakeFiles/generate-ocp3-ansible-playbooks.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ocp3/CMakeFiles/generate-ocp3-ansible-playbooks.dir/depend


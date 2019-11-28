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

# Utility rule file for generate-internal-jre-ocil-unlinked.xml.

# Include the progress variables for this target.
include jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/progress.make

jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml: jre/ocil-unlinked.xml

jre/ocil-unlinked.xml: jre/xccdf-unlinked-resolved.xml
jre/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[jre-content] generating ocil-unlinked.xml"
	cd /root/content-0.1.47/build/jre && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/jre/ocil-unlinked.xml /root/content-0.1.47/shared/transforms/xccdf-create-ocil.xslt /root/content-0.1.47/build/jre/xccdf-unlinked-resolved.xml
	cd /root/content-0.1.47/build/jre && /bin/xmllint --format --output /root/content-0.1.47/build/jre/ocil-unlinked.xml /root/content-0.1.47/build/jre/ocil-unlinked.xml

jre/xccdf-unlinked-resolved.xml: jre/shorthand.xml
jre/xccdf-unlinked-resolved.xml: ../jre/transforms/shorthand2xccdf.xslt
jre/xccdf-unlinked-resolved.xml: ../jre/transforms/constants.xslt
jre/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[jre-content] generating xccdf-unlinked-resolved.xml"
	cd /root/content-0.1.47/build/jre && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/jre/xccdf-unlinked-resolved.xml /root/content-0.1.47/jre/transforms/shorthand2xccdf.xslt /root/content-0.1.47/build/jre/shorthand.xml
	cd /root/content-0.1.47/build/jre && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/jre/xccdf-unlinked-resolved.xml /root/content-0.1.47/build/jre/xccdf-unlinked-resolved.xml

jre/shorthand.xml: ../jre/./profiles/stig.profile
jre/shorthand.xml: bash-remediation-functions.xml
jre/shorthand.xml: ../jre/./guide/benchmark.yml
jre/shorthand.xml: ../jre/./guide/java/group.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_deployment_config_configured/group.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_deployment_config_configured/java_jre_deployment_config_exists/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_deployment_config_configured/java_jre_deployment_config_mandatory/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_deployment_config_configured/java_jre_deployment_config_properties/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_configure_crypto_policy/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_deployment_properties_exists/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_untrusted_sources/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_untrusted_sources_locked/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_updated/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_validation_crl/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_validation_crl_locked/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_validation_ocsp/rule.yml
jre/shorthand.xml: ../jre/./guide/java/java_jre_validation_ocsp_locked/rule.yml
jre/shorthand.xml: bash-remediation-functions.xml
jre/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[jre-content] generating shorthand.xml"
	cd /root/content-0.1.47/build/jre && /usr/bin/cmake -E remove_directory /root/content-0.1.47/build/jre/rules
	cd /root/content-0.1.47/build/jre && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /root/content-0.1.47/build/jre/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/jre/product.yml --bash-remediation-fns /root/content-0.1.47/build/bash-remediation-functions.xml --output /root/content-0.1.47/build/jre/shorthand.xml build
	cd /root/content-0.1.47/build/jre && /bin/xmllint --format --output /root/content-0.1.47/build/jre/shorthand.xml /root/content-0.1.47/build/jre/shorthand.xml

generate-internal-jre-ocil-unlinked.xml: jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml
generate-internal-jre-ocil-unlinked.xml: jre/ocil-unlinked.xml
generate-internal-jre-ocil-unlinked.xml: jre/xccdf-unlinked-resolved.xml
generate-internal-jre-ocil-unlinked.xml: jre/shorthand.xml
generate-internal-jre-ocil-unlinked.xml: jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/build.make
.PHONY : generate-internal-jre-ocil-unlinked.xml

# Rule to build all files generated by this target.
jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/build: generate-internal-jre-ocil-unlinked.xml
.PHONY : jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/build

jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/clean:
	cd /root/content-0.1.47/build/jre && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/cmake_clean.cmake
.PHONY : jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/clean

jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/jre /root/content-0.1.47/build /root/content-0.1.47/build/jre /root/content-0.1.47/build/jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : jre/CMakeFiles/generate-internal-jre-ocil-unlinked.xml.dir/depend


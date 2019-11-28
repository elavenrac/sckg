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

# Utility rule file for generate-internal-fuse6-xccdf-unlinked.xml.

# Include the progress variables for this target.
include fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/progress.make

fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml: fuse6/xccdf-unlinked.xml

fuse6/xccdf-unlinked.xml: fuse6/xccdf-unlinked-ocilrefs.xml
fuse6/xccdf-unlinked.xml: fuse6/bash-fixes.xml
fuse6/xccdf-unlinked.xml: fuse6/ansible-fixes.xml
fuse6/xccdf-unlinked.xml: fuse6/puppet-fixes.xml
fuse6/xccdf-unlinked.xml: fuse6/anaconda-fixes.xml
fuse6/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fuse6-content] generating xccdf-unlinked.xml"
	cd /root/content-0.1.47/build/fuse6 && /bin/xsltproc --stringparam bash_remediations /root/content-0.1.47/build/fuse6/bash-fixes.xml --stringparam ansible_remediations /root/content-0.1.47/build/fuse6/ansible-fixes.xml --stringparam puppet_remediations /root/content-0.1.47/build/fuse6/puppet-fixes.xml --stringparam anaconda_remediations /root/content-0.1.47/build/fuse6/anaconda-fixes.xml --output /root/content-0.1.47/build/fuse6/xccdf-unlinked.xml /root/content-0.1.47/shared/transforms/xccdf-addremediations.xslt /root/content-0.1.47/build/fuse6/xccdf-unlinked-ocilrefs.xml
	cd /root/content-0.1.47/build/fuse6 && /bin/xmllint --format --output /root/content-0.1.47/build/fuse6/xccdf-unlinked.xml /root/content-0.1.47/build/fuse6/xccdf-unlinked.xml

fuse6/xccdf-unlinked-ocilrefs.xml: fuse6/xccdf-unlinked-resolved.xml
fuse6/xccdf-unlinked-ocilrefs.xml: fuse6/ocil-unlinked.xml
fuse6/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fuse6-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /root/content-0.1.47/build/fuse6 && /bin/xsltproc --stringparam product fuse6 --output /root/content-0.1.47/build/fuse6/xccdf-unlinked-ocilrefs.xml /root/content-0.1.47/shared/transforms/xccdf-ocilcheck2ref.xslt /root/content-0.1.47/build/fuse6/xccdf-unlinked-resolved.xml

fuse6/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fuse6-content] generating bash-fixes.xml"
	cd /root/content-0.1.47/build/fuse6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/fuse6/bash-fixes.xml /root/content-0.1.47/build/fuse6/fixes/bash

fuse6/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fuse6-content] generating ansible-fixes.xml"
	cd /root/content-0.1.47/build/fuse6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/fuse6/ansible-fixes.xml /root/content-0.1.47/build/fuse6/fixes/ansible

fuse6/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fuse6-content] generating puppet-fixes.xml"
	cd /root/content-0.1.47/build/fuse6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/fuse6/puppet-fixes.xml /root/content-0.1.47/build/fuse6/fixes/puppet

fuse6/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fuse6-content] generating anaconda-fixes.xml"
	cd /root/content-0.1.47/build/fuse6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/fuse6/anaconda-fixes.xml /root/content-0.1.47/build/fuse6/fixes/anaconda

fuse6/xccdf-unlinked-resolved.xml: fuse6/shorthand.xml
fuse6/xccdf-unlinked-resolved.xml: ../fuse6/transforms/shorthand2xccdf.xslt
fuse6/xccdf-unlinked-resolved.xml: ../fuse6/transforms/constants.xslt
fuse6/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fuse6-content] generating xccdf-unlinked-resolved.xml"
	cd /root/content-0.1.47/build/fuse6 && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/fuse6/xccdf-unlinked-resolved.xml /root/content-0.1.47/fuse6/transforms/shorthand2xccdf.xslt /root/content-0.1.47/build/fuse6/shorthand.xml
	cd /root/content-0.1.47/build/fuse6 && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/fuse6/xccdf-unlinked-resolved.xml /root/content-0.1.47/build/fuse6/xccdf-unlinked-resolved.xml

fuse6/ocil-unlinked.xml: fuse6/xccdf-unlinked-resolved.xml
fuse6/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fuse6-content] generating ocil-unlinked.xml"
	cd /root/content-0.1.47/build/fuse6 && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/fuse6/ocil-unlinked.xml /root/content-0.1.47/shared/transforms/xccdf-create-ocil.xslt /root/content-0.1.47/build/fuse6/xccdf-unlinked-resolved.xml
	cd /root/content-0.1.47/build/fuse6 && /bin/xmllint --format --output /root/content-0.1.47/build/fuse6/ocil-unlinked.xml /root/content-0.1.47/build/fuse6/ocil-unlinked.xml

fuse6/shorthand.xml: ../fuse6/./profiles/amq-stig.profile
fuse6/shorthand.xml: ../fuse6/./profiles/standard.profile
fuse6/shorthand.xml: ../fuse6/./profiles/stig.profile
fuse6/shorthand.xml: bash-remediation-functions.xml
fuse6/shorthand.xml: ../fuse6/./guide/benchmark.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/group.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/group.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-cleartext_passwords/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-default_roles_removed/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-default_users_removed/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-encrypted_passwords/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-file_permissions/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-java_aaa_service/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-pki_dod_certificates/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-pki_web_console/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-security_config_attributes/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/amq/jboss_activemq-ssl_enabled/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/camel/group.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/cxf/group.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/group.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/group.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-access_control_docs/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-application_data_flow_docs/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-assign_administator/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-auditing_policy/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-backup_schedule/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-deployed_apps-java_perm_docs/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-disaster_recovery/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-disaster_recovery_exerises/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-incident_response/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-incident_response_exercises/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-password_complexity_policy/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-password_expiration_policy/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-password_length_policy/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-policies_and_procedures/jboss_karaf-physical_protections/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-config_file_permissions/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-deployed_java_file_permissions/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-deployed_java_network_permissions/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-deployed_permissions/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-deployed_runtime_permissions/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-deployed_socket_permissions/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-disable_hot_deployment/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-disable_services_ports/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-dod_cns_certificates/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-dod_hardware_pki_token/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-downloaded_software_valid/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-enable_encrypted_passwords/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-enable_fips_authentication/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-enable_fips_modules/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-enable_ldap_ssl/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-enable_pki_web_console/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-enable_secure_connections/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-enable_ssl/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-file_permissions/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-files_ownership/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-java_aaa_service/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-java_vendor_supported/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-ldap_securely_fail/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-log_retention/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-logging_access/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-non-essential_bundles_features/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-pki_assocation_permission/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-process_owner_console_access/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-process_owner_permissions/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-reduce_logging/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-remove_cleartext_passwords/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-remove_default_roles/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-remove_default_users/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-secure_java_security_manager/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-secure_jmx_access/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-secure_logging/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-secure_remote_access/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-secure_web_console/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-security_config_attributes/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-stored_passwords_encrypted/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-system_admin_access/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-valid_dod_certificates/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/karaf/jboss_karaf-vender_supported_version/rule.yml
fuse6/shorthand.xml: ../fuse6/./guide/fuse6/policy/group.yml
fuse6/shorthand.xml: bash-remediation-functions.xml
fuse6/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[fuse6-content] generating shorthand.xml"
	cd /root/content-0.1.47/build/fuse6 && /usr/bin/cmake -E remove_directory /root/content-0.1.47/build/fuse6/rules
	cd /root/content-0.1.47/build/fuse6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /root/content-0.1.47/build/fuse6/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/fuse6/product.yml --bash-remediation-fns /root/content-0.1.47/build/bash-remediation-functions.xml --output /root/content-0.1.47/build/fuse6/shorthand.xml build
	cd /root/content-0.1.47/build/fuse6 && /bin/xmllint --format --output /root/content-0.1.47/build/fuse6/shorthand.xml /root/content-0.1.47/build/fuse6/shorthand.xml

generate-internal-fuse6-xccdf-unlinked.xml: fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/xccdf-unlinked.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/xccdf-unlinked-ocilrefs.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/bash-fixes.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/ansible-fixes.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/puppet-fixes.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/anaconda-fixes.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/xccdf-unlinked-resolved.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/ocil-unlinked.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/shorthand.xml
generate-internal-fuse6-xccdf-unlinked.xml: fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/build.make
.PHONY : generate-internal-fuse6-xccdf-unlinked.xml

# Rule to build all files generated by this target.
fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/build: generate-internal-fuse6-xccdf-unlinked.xml
.PHONY : fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/build

fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/clean:
	cd /root/content-0.1.47/build/fuse6 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/cmake_clean.cmake
.PHONY : fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/clean

fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/fuse6 /root/content-0.1.47/build /root/content-0.1.47/build/fuse6 /root/content-0.1.47/build/fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fuse6/CMakeFiles/generate-internal-fuse6-xccdf-unlinked.xml.dir/depend


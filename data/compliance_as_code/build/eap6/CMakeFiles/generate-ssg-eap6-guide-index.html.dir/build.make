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

# Utility rule file for generate-ssg-eap6-guide-index.html.

# Include the progress variables for this target.
include eap6/CMakeFiles/generate-ssg-eap6-guide-index.html.dir/progress.make

eap6/CMakeFiles/generate-ssg-eap6-guide-index.html: guides/ssg-eap6-guide-index.html

guides/ssg-eap6-guide-index.html: ssg-eap6-ds.xml
guides/ssg-eap6-guide-index.html: ssg-eap6-ds-1.2.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-guides] generating HTML guides for all profiles in ssg-eap6-ds.xml"
	cd /root/content-0.1.47/build/eap6 && /usr/bin/cmake -E make_directory /root/content-0.1.47/build/guides
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/build_all_guides.py --input /root/content-0.1.47/build/ssg-eap6-ds.xml --output /root/content-0.1.47/build/guides build

ssg-eap6-ds.xml: ssg-eap6-xccdf-1.2.xml
ssg-eap6-ds.xml: ssg-eap6-oval.xml
ssg-eap6-ds.xml: ssg-eap6-ocil.xml
ssg-eap6-ds.xml: ssg-eap6-cpe-dictionary.xml
ssg-eap6-ds.xml: ssg-eap6-cpe-oval.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating ssg-eap6-ds.xml and ssg-eap6-ds-1.2.xml"
	/bin/oscap ds sds-compose --skip-valid ssg-eap6-xccdf-1.2.xml /root/content-0.1.47/build/ssg-eap6-ds.xml
	/bin/sed -i 's/schematron-version="[0-9].[0-9]"/schematron-version="1.2"/' /root/content-0.1.47/build/ssg-eap6-ds.xml
	/bin/oscap ds sds-add --skip-valid ssg-eap6-cpe-dictionary.xml /root/content-0.1.47/build/ssg-eap6-ds.xml
	env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/sds_move_ocil_to_checks.py /root/content-0.1.47/build/ssg-eap6-ds.xml /root/content-0.1.47/build/ssg-eap6-ds.xml
	env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/update_sds_version.py --version 1.2 --input /root/content-0.1.47/build/ssg-eap6-ds.xml --output /root/content-0.1.47/build/ssg-eap6-ds-1.2.xml
	env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/update_sds_version.py --version 1.3 --input /root/content-0.1.47/build/ssg-eap6-ds.xml --output /root/content-0.1.47/build/ssg-eap6-ds.xml
	/bin/xmllint --nsclean --format --output /root/content-0.1.47/build/ssg-eap6-ds.xml /root/content-0.1.47/build/ssg-eap6-ds.xml
	/bin/xmllint --nsclean --format --output /root/content-0.1.47/build/ssg-eap6-ds-1.2.xml /root/content-0.1.47/build/ssg-eap6-ds-1.2.xml

ssg-eap6-ds-1.2.xml: ssg-eap6-ds.xml

ssg-eap6-xccdf-1.2.xml: ssg-eap6-xccdf.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating ssg-eap6-xccdf-1.2.xml"
	cd /root/content-0.1.47/build/eap6 && /bin/xsltproc --stringparam reverse_DNS org.ssgproject.content --output /root/content-0.1.47/build/ssg-eap6-xccdf-1.2.xml /usr/share/openscap/xsl/xccdf_1.1_to_1.2.xsl /root/content-0.1.47/build/ssg-eap6-xccdf.xml

ssg-eap6-oval.xml: eap6/oval-linked.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating ssg-eap6-oval.xml"
	cd /root/content-0.1.47/build/eap6 && /bin/xmllint --nsclean --format --output /root/content-0.1.47/build/ssg-eap6-oval.xml /root/content-0.1.47/build/eap6/oval-linked.xml

ssg-eap6-ocil.xml: eap6/ocil-linked.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating ssg-eap6-ocil.xml"
	cd /root/content-0.1.47/build/eap6 && /bin/xmllint --nsclean --format --output /root/content-0.1.47/build/ssg-eap6-ocil.xml /root/content-0.1.47/build/eap6/ocil-linked.xml

ssg-eap6-cpe-dictionary.xml: eap6/oval-unlinked.xml
ssg-eap6-cpe-dictionary.xml: ../eap6/cpe/eap6-cpe-dictionary.xml
ssg-eap6-cpe-dictionary.xml: ../build-scripts/cpe_generate.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating ssg-eap6-cpe-dictionary.xml, ssg-eap6-cpe-oval.xml"
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/cpe_generate.py eap6 ssg /root/content-0.1.47/build /root/content-0.1.47/build/eap6/oval-unlinked.xml /root/content-0.1.47/eap6/cpe/eap6-cpe-dictionary.xml
	cd /root/content-0.1.47/build/eap6 && /bin/xmllint --nsclean --format --output /root/content-0.1.47/build/ssg-eap6-cpe-dictionary.xml /root/content-0.1.47/build/ssg-eap6-cpe-dictionary.xml
	cd /root/content-0.1.47/build/eap6 && /bin/xmllint --nsclean --format --output /root/content-0.1.47/build/ssg-eap6-cpe-oval.xml /root/content-0.1.47/build/ssg-eap6-cpe-oval.xml

ssg-eap6-cpe-oval.xml: ssg-eap6-cpe-dictionary.xml

ssg-eap6-xccdf.xml: eap6/xccdf-linked.xml
ssg-eap6-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-eap6-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating ssg-eap6-xccdf.xml"
	cd /root/content-0.1.47/build/eap6 && /bin/xsltproc --output /root/content-0.1.47/build/ssg-eap6-xccdf.xml /root/content-0.1.47/shared/transforms/shared_xccdf-removeaux.xslt /root/content-0.1.47/build/eap6/xccdf-linked.xml
	cd /root/content-0.1.47/build/eap6 && /bin/sed -i s/oval-linked.xml/ssg-eap6-oval.xml/g /root/content-0.1.47/build/ssg-eap6-xccdf.xml
	cd /root/content-0.1.47/build/eap6 && /bin/sed -i s/ocil-linked.xml/ssg-eap6-ocil.xml/g /root/content-0.1.47/build/ssg-eap6-xccdf.xml
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/unselect_empty_xccdf_groups.py --input /root/content-0.1.47/build/ssg-eap6-xccdf.xml --output /root/content-0.1.47/build/ssg-eap6-xccdf.xml
	cd /root/content-0.1.47/build/eap6 && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/ssg-eap6-xccdf.xml /root/content-0.1.47/build/ssg-eap6-xccdf.xml
	cd /root/content-0.1.47/build/eap6 && /bin/xmllint --nsclean --format --output /root/content-0.1.47/build/ssg-eap6-xccdf.xml /root/content-0.1.47/build/ssg-eap6-xccdf.xml

eap6/xccdf-linked.xml: eap6/xccdf-unlinked.xml
eap6/xccdf-linked.xml: eap6/oval-unlinked.xml
eap6/xccdf-linked.xml: eap6/ocil-unlinked.xml
eap6/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/relabel_ids.py /root/content-0.1.47/build/eap6/xccdf-unlinked.xml ssg

eap6/oval-linked.xml: eap6/xccdf-linked.xml

eap6/ocil-linked.xml: eap6/xccdf-linked.xml

eap6/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating oval-unlinked.xml"
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/combine_ovals.py --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/eap6/product.yml --output /root/content-0.1.47/build/eap6/oval-unlinked.xml /root/content-0.1.47/build/eap6/checks/shared/oval /root/content-0.1.47/shared/checks/oval /root/content-0.1.47/build/eap6/checks/oval /root/content-0.1.47/eap6/checks/oval
	cd /root/content-0.1.47/build/eap6 && /bin/xmllint --format --output /root/content-0.1.47/build/eap6/oval-unlinked.xml /root/content-0.1.47/build/eap6/oval-unlinked.xml

eap6/xccdf-unlinked.xml: eap6/xccdf-unlinked-ocilrefs.xml
eap6/xccdf-unlinked.xml: eap6/bash-fixes.xml
eap6/xccdf-unlinked.xml: eap6/ansible-fixes.xml
eap6/xccdf-unlinked.xml: eap6/puppet-fixes.xml
eap6/xccdf-unlinked.xml: eap6/anaconda-fixes.xml
eap6/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating xccdf-unlinked.xml"
	cd /root/content-0.1.47/build/eap6 && /bin/xsltproc --stringparam bash_remediations /root/content-0.1.47/build/eap6/bash-fixes.xml --stringparam ansible_remediations /root/content-0.1.47/build/eap6/ansible-fixes.xml --stringparam puppet_remediations /root/content-0.1.47/build/eap6/puppet-fixes.xml --stringparam anaconda_remediations /root/content-0.1.47/build/eap6/anaconda-fixes.xml --output /root/content-0.1.47/build/eap6/xccdf-unlinked.xml /root/content-0.1.47/shared/transforms/xccdf-addremediations.xslt /root/content-0.1.47/build/eap6/xccdf-unlinked-ocilrefs.xml
	cd /root/content-0.1.47/build/eap6 && /bin/xmllint --format --output /root/content-0.1.47/build/eap6/xccdf-unlinked.xml /root/content-0.1.47/build/eap6/xccdf-unlinked.xml

eap6/ocil-unlinked.xml: eap6/xccdf-unlinked-resolved.xml
eap6/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating ocil-unlinked.xml"
	cd /root/content-0.1.47/build/eap6 && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/eap6/ocil-unlinked.xml /root/content-0.1.47/shared/transforms/xccdf-create-ocil.xslt /root/content-0.1.47/build/eap6/xccdf-unlinked-resolved.xml
	cd /root/content-0.1.47/build/eap6 && /bin/xmllint --format --output /root/content-0.1.47/build/eap6/ocil-unlinked.xml /root/content-0.1.47/build/eap6/ocil-unlinked.xml

eap6/xccdf-unlinked-ocilrefs.xml: eap6/xccdf-unlinked-resolved.xml
eap6/xccdf-unlinked-ocilrefs.xml: eap6/ocil-unlinked.xml
eap6/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /root/content-0.1.47/build/eap6 && /bin/xsltproc --stringparam product eap6 --output /root/content-0.1.47/build/eap6/xccdf-unlinked-ocilrefs.xml /root/content-0.1.47/shared/transforms/xccdf-ocilcheck2ref.xslt /root/content-0.1.47/build/eap6/xccdf-unlinked-resolved.xml

eap6/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating bash-fixes.xml"
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/eap6/bash-fixes.xml /root/content-0.1.47/build/eap6/fixes/bash

eap6/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_14)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating ansible-fixes.xml"
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/eap6/ansible-fixes.xml /root/content-0.1.47/build/eap6/fixes/ansible

eap6/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_15)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating puppet-fixes.xml"
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/eap6/puppet-fixes.xml /root/content-0.1.47/build/eap6/fixes/puppet

eap6/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_16)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating anaconda-fixes.xml"
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/eap6/anaconda-fixes.xml /root/content-0.1.47/build/eap6/fixes/anaconda

eap6/xccdf-unlinked-resolved.xml: eap6/shorthand.xml
eap6/xccdf-unlinked-resolved.xml: ../eap6/transforms/shorthand2xccdf.xslt
eap6/xccdf-unlinked-resolved.xml: ../eap6/transforms/constants.xslt
eap6/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
eap6/xccdf-unlinked-resolved.xml: ../shared/references/disa-stig-eap6-v1r2-xccdf-manual.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_17)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating xccdf-unlinked-resolved.xml"
	cd /root/content-0.1.47/build/eap6 && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/eap6/xccdf-unlinked-resolved.xml /root/content-0.1.47/eap6/transforms/shorthand2xccdf.xslt /root/content-0.1.47/build/eap6/shorthand.xml
	cd /root/content-0.1.47/build/eap6 && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/eap6/xccdf-unlinked-resolved.xml /root/content-0.1.47/build/eap6/xccdf-unlinked-resolved.xml
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/add_stig_references.py --disa-stig /root/content-0.1.47/shared/references/disa-stig-eap6-v1r2-xccdf-manual.xml --unlinked-xccdf /root/content-0.1.47/build/eap6/xccdf-unlinked-resolved.xml

eap6/shorthand.xml: ../eap6/./profiles/stig.profile
eap6/shorthand.xml: bash-remediation-functions.xml
eap6/shorthand.xml: ../eap6/./guide/benchmark.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/group.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/var_jboss_profile.var
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_audit_privileged_actions/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_application_authentication/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_auditing/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_auditor_roles/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_ha_lb/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_host_access_restrictions/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_https/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_keystore/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_ldap/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_log_permissions/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_logging_level/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_management_authentication/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_management_ldap/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_management_network/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_multifactor_authentication/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_offloading_max/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_ports/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_secure_management_access/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_security_manager/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_security_realm/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_syslog/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_user_permissions/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_configure_user_roles/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_disable_analytics/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_disable_automatic_deployment/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_disable_domain_admin_console/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_disable_replace_welcome_page/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_enable_rbac/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_encrypt_keystore_passwords/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_file_permissions/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_log_deployments/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_logs_permissions/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_remove_group_accounts/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_remove_jmx/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_remove_quickstarts/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_remove_unnecessary_apps/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_require_password_access/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_restrict_jboss_account/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_roll_over_transfer_logs/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_secure_keystore_permissions/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_service_separate_networks/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_system_up_to_date/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_unprivileged_mode/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_use_approved_ca_cert/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_use_approved_ciphers/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_use_dod_approved_certs/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_use_secure_ldap_port/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_use_tls/rule.yml
eap6/shorthand.xml: ../eap6/./guide/eap6/jboss_eap_vendor_supported/rule.yml
eap6/shorthand.xml: bash-remediation-functions.xml
eap6/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_18)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[eap6-content] generating shorthand.xml"
	cd /root/content-0.1.47/build/eap6 && /usr/bin/cmake -E remove_directory /root/content-0.1.47/build/eap6/rules
	cd /root/content-0.1.47/build/eap6 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /root/content-0.1.47/build/eap6/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/eap6/product.yml --bash-remediation-fns /root/content-0.1.47/build/bash-remediation-functions.xml --output /root/content-0.1.47/build/eap6/shorthand.xml build
	cd /root/content-0.1.47/build/eap6 && /bin/xmllint --format --output /root/content-0.1.47/build/eap6/shorthand.xml /root/content-0.1.47/build/eap6/shorthand.xml

generate-ssg-eap6-guide-index.html: eap6/CMakeFiles/generate-ssg-eap6-guide-index.html
generate-ssg-eap6-guide-index.html: guides/ssg-eap6-guide-index.html
generate-ssg-eap6-guide-index.html: ssg-eap6-ds.xml
generate-ssg-eap6-guide-index.html: ssg-eap6-ds-1.2.xml
generate-ssg-eap6-guide-index.html: ssg-eap6-xccdf-1.2.xml
generate-ssg-eap6-guide-index.html: ssg-eap6-oval.xml
generate-ssg-eap6-guide-index.html: ssg-eap6-ocil.xml
generate-ssg-eap6-guide-index.html: ssg-eap6-cpe-dictionary.xml
generate-ssg-eap6-guide-index.html: ssg-eap6-cpe-oval.xml
generate-ssg-eap6-guide-index.html: ssg-eap6-xccdf.xml
generate-ssg-eap6-guide-index.html: eap6/xccdf-linked.xml
generate-ssg-eap6-guide-index.html: eap6/oval-linked.xml
generate-ssg-eap6-guide-index.html: eap6/ocil-linked.xml
generate-ssg-eap6-guide-index.html: eap6/oval-unlinked.xml
generate-ssg-eap6-guide-index.html: eap6/xccdf-unlinked.xml
generate-ssg-eap6-guide-index.html: eap6/ocil-unlinked.xml
generate-ssg-eap6-guide-index.html: eap6/xccdf-unlinked-ocilrefs.xml
generate-ssg-eap6-guide-index.html: eap6/bash-fixes.xml
generate-ssg-eap6-guide-index.html: eap6/ansible-fixes.xml
generate-ssg-eap6-guide-index.html: eap6/puppet-fixes.xml
generate-ssg-eap6-guide-index.html: eap6/anaconda-fixes.xml
generate-ssg-eap6-guide-index.html: eap6/xccdf-unlinked-resolved.xml
generate-ssg-eap6-guide-index.html: eap6/shorthand.xml
generate-ssg-eap6-guide-index.html: eap6/CMakeFiles/generate-ssg-eap6-guide-index.html.dir/build.make
.PHONY : generate-ssg-eap6-guide-index.html

# Rule to build all files generated by this target.
eap6/CMakeFiles/generate-ssg-eap6-guide-index.html.dir/build: generate-ssg-eap6-guide-index.html
.PHONY : eap6/CMakeFiles/generate-ssg-eap6-guide-index.html.dir/build

eap6/CMakeFiles/generate-ssg-eap6-guide-index.html.dir/clean:
	cd /root/content-0.1.47/build/eap6 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-eap6-guide-index.html.dir/cmake_clean.cmake
.PHONY : eap6/CMakeFiles/generate-ssg-eap6-guide-index.html.dir/clean

eap6/CMakeFiles/generate-ssg-eap6-guide-index.html.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/eap6 /root/content-0.1.47/build /root/content-0.1.47/build/eap6 /root/content-0.1.47/build/eap6/CMakeFiles/generate-ssg-eap6-guide-index.html.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : eap6/CMakeFiles/generate-ssg-eap6-guide-index.html.dir/depend


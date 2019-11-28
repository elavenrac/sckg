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

# Utility rule file for rhosp13-html-profile-stats.

# Include the progress variables for this target.
include rhosp13/CMakeFiles/rhosp13-html-profile-stats.dir/progress.make

rhosp13/CMakeFiles/rhosp13-html-profile-stats: ssg-rhosp13-xccdf.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-html-profile-stats] generating per profile html statistics"
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/profile_tool.py stats --format html --benchmark /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml --output /root/content-0.1.47/build/rhosp13/profile-statistics/

ssg-rhosp13-xccdf.xml: rhosp13/xccdf-linked.xml
ssg-rhosp13-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-rhosp13-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating ssg-rhosp13-xccdf.xml"
	cd /root/content-0.1.47/build/rhosp13 && /bin/xsltproc --output /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml /root/content-0.1.47/shared/transforms/shared_xccdf-removeaux.xslt /root/content-0.1.47/build/rhosp13/xccdf-linked.xml
	cd /root/content-0.1.47/build/rhosp13 && /bin/sed -i s/oval-linked.xml/ssg-rhosp13-oval.xml/g /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml
	cd /root/content-0.1.47/build/rhosp13 && /bin/sed -i s/ocil-linked.xml/ssg-rhosp13-ocil.xml/g /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/unselect_empty_xccdf_groups.py --input /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml --output /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml
	cd /root/content-0.1.47/build/rhosp13 && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml
	cd /root/content-0.1.47/build/rhosp13 && /bin/xmllint --nsclean --format --output /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml /root/content-0.1.47/build/ssg-rhosp13-xccdf.xml

rhosp13/xccdf-linked.xml: rhosp13/xccdf-unlinked.xml
rhosp13/xccdf-linked.xml: rhosp13/oval-unlinked.xml
rhosp13/xccdf-linked.xml: rhosp13/ocil-unlinked.xml
rhosp13/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/relabel_ids.py /root/content-0.1.47/build/rhosp13/xccdf-unlinked.xml ssg

rhosp13/oval-linked.xml: rhosp13/xccdf-linked.xml

rhosp13/ocil-linked.xml: rhosp13/xccdf-linked.xml

rhosp13/xccdf-unlinked.xml: rhosp13/xccdf-unlinked-ocilrefs.xml
rhosp13/xccdf-unlinked.xml: rhosp13/bash-fixes.xml
rhosp13/xccdf-unlinked.xml: rhosp13/ansible-fixes.xml
rhosp13/xccdf-unlinked.xml: rhosp13/puppet-fixes.xml
rhosp13/xccdf-unlinked.xml: rhosp13/anaconda-fixes.xml
rhosp13/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating xccdf-unlinked.xml"
	cd /root/content-0.1.47/build/rhosp13 && /bin/xsltproc --stringparam bash_remediations /root/content-0.1.47/build/rhosp13/bash-fixes.xml --stringparam ansible_remediations /root/content-0.1.47/build/rhosp13/ansible-fixes.xml --stringparam puppet_remediations /root/content-0.1.47/build/rhosp13/puppet-fixes.xml --stringparam anaconda_remediations /root/content-0.1.47/build/rhosp13/anaconda-fixes.xml --output /root/content-0.1.47/build/rhosp13/xccdf-unlinked.xml /root/content-0.1.47/shared/transforms/xccdf-addremediations.xslt /root/content-0.1.47/build/rhosp13/xccdf-unlinked-ocilrefs.xml
	cd /root/content-0.1.47/build/rhosp13 && /bin/xmllint --format --output /root/content-0.1.47/build/rhosp13/xccdf-unlinked.xml /root/content-0.1.47/build/rhosp13/xccdf-unlinked.xml

rhosp13/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating oval-unlinked.xml"
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/combine_ovals.py --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/rhosp13/product.yml --output /root/content-0.1.47/build/rhosp13/oval-unlinked.xml /root/content-0.1.47/build/rhosp13/checks/shared/oval /root/content-0.1.47/shared/checks/oval /root/content-0.1.47/build/rhosp13/checks/oval /root/content-0.1.47/rhosp13/checks/oval
	cd /root/content-0.1.47/build/rhosp13 && /bin/xmllint --format --output /root/content-0.1.47/build/rhosp13/oval-unlinked.xml /root/content-0.1.47/build/rhosp13/oval-unlinked.xml

rhosp13/ocil-unlinked.xml: rhosp13/xccdf-unlinked-resolved.xml
rhosp13/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating ocil-unlinked.xml"
	cd /root/content-0.1.47/build/rhosp13 && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/rhosp13/ocil-unlinked.xml /root/content-0.1.47/shared/transforms/xccdf-create-ocil.xslt /root/content-0.1.47/build/rhosp13/xccdf-unlinked-resolved.xml
	cd /root/content-0.1.47/build/rhosp13 && /bin/xmllint --format --output /root/content-0.1.47/build/rhosp13/ocil-unlinked.xml /root/content-0.1.47/build/rhosp13/ocil-unlinked.xml

rhosp13/xccdf-unlinked-ocilrefs.xml: rhosp13/xccdf-unlinked-resolved.xml
rhosp13/xccdf-unlinked-ocilrefs.xml: rhosp13/ocil-unlinked.xml
rhosp13/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /root/content-0.1.47/build/rhosp13 && /bin/xsltproc --stringparam product rhosp13 --output /root/content-0.1.47/build/rhosp13/xccdf-unlinked-ocilrefs.xml /root/content-0.1.47/shared/transforms/xccdf-ocilcheck2ref.xslt /root/content-0.1.47/build/rhosp13/xccdf-unlinked-resolved.xml

rhosp13/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating bash-fixes.xml"
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/rhosp13/bash-fixes.xml /root/content-0.1.47/build/rhosp13/fixes/bash

rhosp13/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating ansible-fixes.xml"
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/rhosp13/ansible-fixes.xml /root/content-0.1.47/build/rhosp13/fixes/ansible

rhosp13/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating puppet-fixes.xml"
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/rhosp13/puppet-fixes.xml /root/content-0.1.47/build/rhosp13/fixes/puppet

rhosp13/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating anaconda-fixes.xml"
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/rhosp13/anaconda-fixes.xml /root/content-0.1.47/build/rhosp13/fixes/anaconda

rhosp13/xccdf-unlinked-resolved.xml: rhosp13/shorthand.xml
rhosp13/xccdf-unlinked-resolved.xml: ../rhosp13/transforms/shorthand2xccdf.xslt
rhosp13/xccdf-unlinked-resolved.xml: ../rhosp13/transforms/constants.xslt
rhosp13/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating xccdf-unlinked-resolved.xml"
	cd /root/content-0.1.47/build/rhosp13 && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/rhosp13/xccdf-unlinked-resolved.xml /root/content-0.1.47/rhosp13/transforms/shorthand2xccdf.xslt /root/content-0.1.47/build/rhosp13/shorthand.xml
	cd /root/content-0.1.47/build/rhosp13 && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/rhosp13/xccdf-unlinked-resolved.xml /root/content-0.1.47/build/rhosp13/xccdf-unlinked-resolved.xml

rhosp13/shorthand.xml: ../rhosp13/./profiles/stig.profile
rhosp13/shorthand.xml: bash-remediation-functions.xml
rhosp13/shorthand.xml: ../rhosp13/../applications/benchmark.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/general-principles/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/general-principles/principle-encrypt-transmitted-data/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/general-principles/principle-least-privilege/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/general-principles/principle-separate-servers/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/general-principles/principle-use-security-tools/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/how-to-use/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/how-to-use/intro-formatting-conventions/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/how-to-use/intro-read-sections-completely/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/how-to-use/intro-reboot-required/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/how-to-use/intro-root-shell-assumed/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/intro/how-to-use/intro-test-non-production/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_admission_control_plugin_AlwaysAdmit/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_admission_control_plugin_AlwaysPullImages/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_admission_control_plugin_DenyEscalatingExec/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_admission_control_plugin_EventRateLimit/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_admission_control_plugin_NamespaceLifecycle/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_admission_control_plugin_NodeRestriction/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_admission_control_plugin_PodSecurityPolicy/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_admission_control_plugin_SecurityContextDeny/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_admission_control_plugin_ServiceAccount/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_advanced_auditing/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_anonymous_auth/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_audit_log_maxage/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_audit_log_maxbackup/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_audit_log_maxsize/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_audit_log_path/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_authorization_mode/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_basic_auth/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_client_ca/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_etcd_ca/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_etcd_cert/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_etcd_key/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_experimental_encryption_provider_cipher/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_experimental_encryption_provider_config/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_insecure_allow_any_token/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_insecure_bind_address/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_insecure_port/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_kubelet_certificate_authority/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_kubelet_client_cert/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_kubelet_client_key/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_kubelet_https/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_profiling/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_request_timeout/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_secure_port/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_service_account_ca/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_service_account_private_key/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_service_account_public_key/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_tls_cert/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_tls_cipher_suites/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_tls_private_key/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/api-server/api_server_token_auth/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/controller/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/controller/controller_bind_address/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/controller/controller_disable_profiling/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/controller/controller_rotate_kubelet_server_certs/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/controller/controller_terminated_pod_gc_threshhold/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/controller/controller_use_service_account/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_auto_tls/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_cert_file/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_client_cert_auth/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_key_file/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_max_wals/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_peer_auto_tls/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_peer_cert_file/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_peer_client_cert_auth/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_peer_key_file/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_unique_ca/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/etcd/etcd_wal_dir/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/general/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/general/general_configure_imagepolicywebhook/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/general/general_create_network_segmentation/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/general/general_enable_seccomp/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/general/general_least_privilege_scc/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/general/general_limit_cluster_admin/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/general/general_scc_for_privileged_containers/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/general/general_use_openshift_projects/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/var_kube_authorization_mode.var
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/var_streaming_connection_timeouts.var
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_configure_client_ca/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_configure_event_creation/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_configure_tls_cert/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_configure_tls_key/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_disable_cadvisor_port/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_disable_hostname_override/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_disable_readonly_port/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_enable_client_cert_rotation/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_enable_iptables_util_chains/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_enable_server_cert_rotation/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/kubelet/kubelet_enable_streaming_connections/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_etc_origin/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_admin_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_api_server/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_cni_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_controller_manager/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_etcd/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_openshift_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_openshift_kubeconfig/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_openvswitch/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_scheduler_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_node_config/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_node_kubeconfig/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_openshift_node_client_crt/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_openshift_node_service/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_var_lib_etcd/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_etc_origin/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_admin_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_api_server/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_cni_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_controller_manager/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_etcd/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_openshift_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_openshift_kubeconfig/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_openvswitch/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_scheduler_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_node_config/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_node_kubeconfig/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_openshift_node_client_crt/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_openshift_node_service/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_owner_var_lib_etcd/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_etc_origin/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_admin_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_api_server/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_cni_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_controller_manager/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_etcd/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_openshift_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_openshift_kubeconfig/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_openvswitch/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_scheduler_conf/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_node_config/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_node_kubeconfig/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_openshift_node_client_crt/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_openshift_node_service/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/ocp-permissions/ocp-files/file_permissions_var_lib_etcd/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/scheduler/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openshift/scheduler/scheduler_profiling_argument/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder/cinder_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder/cinder_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder/cinder_glance_tls/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder/cinder_nas_secure_file_permissions/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder/cinder_nova_tls/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder/cinder_osapi_max_request_body/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder/cinder_tls_enabled/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder/cinder_using_keystone/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder_container/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder_container/container_cinder_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder_container/container_cinder_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder_container/container_cinder_glance_tls/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder_container/container_cinder_nas_secure_file_permissions/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder_container/container_cinder_nova_tls/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder_container/container_cinder_osapi_max_request_body/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder_container/container_cinder_tls_enabled/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/cinder_container/container_cinder_using_keystone/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon/horizon_csrf_cookie_secure/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon/horizon_disable_password_reveal/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon/horizon_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon/horizon_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon/horizon_password_autocomplete/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon/horizon_session_cookie_httponly/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon/horizon_session_cookie_secure/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon/horizon_use_ssl/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon_container/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon_container/container_horizon_csrf_cookie_secure/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon_container/container_horizon_disable_password_reveal/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon_container/container_horizon_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon_container/container_horizon_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon_container/container_horizon_password_autocomplete/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon_container/container_horizon_session_cookie_httponly/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon_container/container_horizon_session_cookie_secure/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/horizon_container/container_horizon_use_ssl/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/var_keystone_disable_user_account_days_inactive.var
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/var_keystone_lockout_duration.var
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/var_keystone_lockout_failure_attempts.var
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/keystone_algorithm_hashing/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/keystone_disable_admin_token/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/keystone_disable_user_account_days_inactive/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/keystone_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/keystone_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/keystone_lockout_duration/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/keystone_lockout_failure_attempts/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/keystone_max_request_body_size/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone/keystone_use_ssl/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/container_keystone_algorithm_hashing/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/container_keystone_disable_admin_token/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/container_keystone_disable_user_account_days_inactive/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/container_keystone_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/container_keystone_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/container_keystone_lockout_duration/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/container_keystone_lockout_failure_attempts/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/container_keystone_max_request_body_size/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/keystone_container/container_keystone_use_ssl/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron/neutron_api_use_ssl/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron/neutron_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron/neutron_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron/neutron_use_https/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron/neutron_use_keystone/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron_container/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron_container/container_neutron_api_use_ssl/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron_container/container_neutron_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron_container/container_neutron_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron_container/container_neutron_use_https/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/neutron_container/container_neutron_use_keystone/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova/nova_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova/nova_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova/nova_secure_authentication/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova/nova_secure_glance/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova/nova_use_keystone/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova_container/group.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova_container/container_nova_file_ownership/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova_container/container_nova_file_perms/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova_container/container_nova_secure_authentication/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova_container/container_nova_secure_glance/rule.yml
rhosp13/shorthand.xml: ../rhosp13/../applications/openstack/nova_container/container_nova_use_keystone/rule.yml
rhosp13/shorthand.xml: bash-remediation-functions.xml
rhosp13/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[rhosp13-content] generating shorthand.xml"
	cd /root/content-0.1.47/build/rhosp13 && /usr/bin/cmake -E remove_directory /root/content-0.1.47/build/rhosp13/rules
	cd /root/content-0.1.47/build/rhosp13 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /root/content-0.1.47/build/rhosp13/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/rhosp13/product.yml --bash-remediation-fns /root/content-0.1.47/build/bash-remediation-functions.xml --output /root/content-0.1.47/build/rhosp13/shorthand.xml build
	cd /root/content-0.1.47/build/rhosp13 && /bin/xmllint --format --output /root/content-0.1.47/build/rhosp13/shorthand.xml /root/content-0.1.47/build/rhosp13/shorthand.xml

rhosp13-html-profile-stats: rhosp13/CMakeFiles/rhosp13-html-profile-stats
rhosp13-html-profile-stats: ssg-rhosp13-xccdf.xml
rhosp13-html-profile-stats: rhosp13/xccdf-linked.xml
rhosp13-html-profile-stats: rhosp13/oval-linked.xml
rhosp13-html-profile-stats: rhosp13/ocil-linked.xml
rhosp13-html-profile-stats: rhosp13/xccdf-unlinked.xml
rhosp13-html-profile-stats: rhosp13/oval-unlinked.xml
rhosp13-html-profile-stats: rhosp13/ocil-unlinked.xml
rhosp13-html-profile-stats: rhosp13/xccdf-unlinked-ocilrefs.xml
rhosp13-html-profile-stats: rhosp13/bash-fixes.xml
rhosp13-html-profile-stats: rhosp13/ansible-fixes.xml
rhosp13-html-profile-stats: rhosp13/puppet-fixes.xml
rhosp13-html-profile-stats: rhosp13/anaconda-fixes.xml
rhosp13-html-profile-stats: rhosp13/xccdf-unlinked-resolved.xml
rhosp13-html-profile-stats: rhosp13/shorthand.xml
rhosp13-html-profile-stats: rhosp13/CMakeFiles/rhosp13-html-profile-stats.dir/build.make
.PHONY : rhosp13-html-profile-stats

# Rule to build all files generated by this target.
rhosp13/CMakeFiles/rhosp13-html-profile-stats.dir/build: rhosp13-html-profile-stats
.PHONY : rhosp13/CMakeFiles/rhosp13-html-profile-stats.dir/build

rhosp13/CMakeFiles/rhosp13-html-profile-stats.dir/clean:
	cd /root/content-0.1.47/build/rhosp13 && $(CMAKE_COMMAND) -P CMakeFiles/rhosp13-html-profile-stats.dir/cmake_clean.cmake
.PHONY : rhosp13/CMakeFiles/rhosp13-html-profile-stats.dir/clean

rhosp13/CMakeFiles/rhosp13-html-profile-stats.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/rhosp13 /root/content-0.1.47/build /root/content-0.1.47/build/rhosp13 /root/content-0.1.47/build/rhosp13/CMakeFiles/rhosp13-html-profile-stats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhosp13/CMakeFiles/rhosp13-html-profile-stats.dir/depend


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

# Utility rule file for ocp3-stats.

# Include the progress variables for this target.
include ocp3/CMakeFiles/ocp3-stats.dir/progress.make

ocp3/CMakeFiles/ocp3-stats: ssg-ocp3-xccdf.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-stats] generating benchmark statistics"
	cd /root/content-0.1.47/build/ocp3 && /usr/bin/cmake -E echo Benchmark\ statistics\ for\ 'ocp3':
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/profile_tool.py stats --benchmark /root/content-0.1.47/build/ssg-ocp3-xccdf.xml --profile all

ssg-ocp3-xccdf.xml: ocp3/xccdf-linked.xml
ssg-ocp3-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-ocp3-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating ssg-ocp3-xccdf.xml"
	cd /root/content-0.1.47/build/ocp3 && /bin/xsltproc --output /root/content-0.1.47/build/ssg-ocp3-xccdf.xml /root/content-0.1.47/shared/transforms/shared_xccdf-removeaux.xslt /root/content-0.1.47/build/ocp3/xccdf-linked.xml
	cd /root/content-0.1.47/build/ocp3 && /bin/sed -i s/oval-linked.xml/ssg-ocp3-oval.xml/g /root/content-0.1.47/build/ssg-ocp3-xccdf.xml
	cd /root/content-0.1.47/build/ocp3 && /bin/sed -i s/ocil-linked.xml/ssg-ocp3-ocil.xml/g /root/content-0.1.47/build/ssg-ocp3-xccdf.xml
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/unselect_empty_xccdf_groups.py --input /root/content-0.1.47/build/ssg-ocp3-xccdf.xml --output /root/content-0.1.47/build/ssg-ocp3-xccdf.xml
	cd /root/content-0.1.47/build/ocp3 && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/ssg-ocp3-xccdf.xml /root/content-0.1.47/build/ssg-ocp3-xccdf.xml
	cd /root/content-0.1.47/build/ocp3 && /bin/xmllint --nsclean --format --output /root/content-0.1.47/build/ssg-ocp3-xccdf.xml /root/content-0.1.47/build/ssg-ocp3-xccdf.xml

ocp3/xccdf-linked.xml: ocp3/xccdf-unlinked.xml
ocp3/xccdf-linked.xml: ocp3/oval-unlinked.xml
ocp3/xccdf-linked.xml: ocp3/ocil-unlinked.xml
ocp3/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/relabel_ids.py /root/content-0.1.47/build/ocp3/xccdf-unlinked.xml ssg

ocp3/oval-linked.xml: ocp3/xccdf-linked.xml

ocp3/ocil-linked.xml: ocp3/xccdf-linked.xml

ocp3/xccdf-unlinked.xml: ocp3/xccdf-unlinked-ocilrefs.xml
ocp3/xccdf-unlinked.xml: ocp3/bash-fixes.xml
ocp3/xccdf-unlinked.xml: ocp3/ansible-fixes.xml
ocp3/xccdf-unlinked.xml: ocp3/puppet-fixes.xml
ocp3/xccdf-unlinked.xml: ocp3/anaconda-fixes.xml
ocp3/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating xccdf-unlinked.xml"
	cd /root/content-0.1.47/build/ocp3 && /bin/xsltproc --stringparam bash_remediations /root/content-0.1.47/build/ocp3/bash-fixes.xml --stringparam ansible_remediations /root/content-0.1.47/build/ocp3/ansible-fixes.xml --stringparam puppet_remediations /root/content-0.1.47/build/ocp3/puppet-fixes.xml --stringparam anaconda_remediations /root/content-0.1.47/build/ocp3/anaconda-fixes.xml --output /root/content-0.1.47/build/ocp3/xccdf-unlinked.xml /root/content-0.1.47/shared/transforms/xccdf-addremediations.xslt /root/content-0.1.47/build/ocp3/xccdf-unlinked-ocilrefs.xml
	cd /root/content-0.1.47/build/ocp3 && /bin/xmllint --format --output /root/content-0.1.47/build/ocp3/xccdf-unlinked.xml /root/content-0.1.47/build/ocp3/xccdf-unlinked.xml

ocp3/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating oval-unlinked.xml"
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/combine_ovals.py --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/ocp3/product.yml --output /root/content-0.1.47/build/ocp3/oval-unlinked.xml /root/content-0.1.47/build/ocp3/checks/shared/oval /root/content-0.1.47/shared/checks/oval /root/content-0.1.47/build/ocp3/checks/oval /root/content-0.1.47/ocp3/checks/oval
	cd /root/content-0.1.47/build/ocp3 && /bin/xmllint --format --output /root/content-0.1.47/build/ocp3/oval-unlinked.xml /root/content-0.1.47/build/ocp3/oval-unlinked.xml

ocp3/ocil-unlinked.xml: ocp3/xccdf-unlinked-resolved.xml
ocp3/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating ocil-unlinked.xml"
	cd /root/content-0.1.47/build/ocp3 && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/ocp3/ocil-unlinked.xml /root/content-0.1.47/shared/transforms/xccdf-create-ocil.xslt /root/content-0.1.47/build/ocp3/xccdf-unlinked-resolved.xml
	cd /root/content-0.1.47/build/ocp3 && /bin/xmllint --format --output /root/content-0.1.47/build/ocp3/ocil-unlinked.xml /root/content-0.1.47/build/ocp3/ocil-unlinked.xml

ocp3/xccdf-unlinked-ocilrefs.xml: ocp3/xccdf-unlinked-resolved.xml
ocp3/xccdf-unlinked-ocilrefs.xml: ocp3/ocil-unlinked.xml
ocp3/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /root/content-0.1.47/build/ocp3 && /bin/xsltproc --stringparam product ocp3 --output /root/content-0.1.47/build/ocp3/xccdf-unlinked-ocilrefs.xml /root/content-0.1.47/shared/transforms/xccdf-ocilcheck2ref.xslt /root/content-0.1.47/build/ocp3/xccdf-unlinked-resolved.xml

ocp3/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating bash-fixes.xml"
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/ocp3/bash-fixes.xml /root/content-0.1.47/build/ocp3/fixes/bash

ocp3/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating ansible-fixes.xml"
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/ocp3/ansible-fixes.xml /root/content-0.1.47/build/ocp3/fixes/ansible

ocp3/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating puppet-fixes.xml"
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/ocp3/puppet-fixes.xml /root/content-0.1.47/build/ocp3/fixes/puppet

ocp3/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating anaconda-fixes.xml"
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /root/content-0.1.47/build --output /root/content-0.1.47/build/ocp3/anaconda-fixes.xml /root/content-0.1.47/build/ocp3/fixes/anaconda

ocp3/xccdf-unlinked-resolved.xml: ocp3/shorthand.xml
ocp3/xccdf-unlinked-resolved.xml: ../ocp3/transforms/shorthand2xccdf.xslt
ocp3/xccdf-unlinked-resolved.xml: ../ocp3/transforms/constants.xslt
ocp3/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating xccdf-unlinked-resolved.xml"
	cd /root/content-0.1.47/build/ocp3 && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/ocp3/xccdf-unlinked-resolved.xml /root/content-0.1.47/ocp3/transforms/shorthand2xccdf.xslt /root/content-0.1.47/build/ocp3/shorthand.xml
	cd /root/content-0.1.47/build/ocp3 && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/ocp3/xccdf-unlinked-resolved.xml /root/content-0.1.47/build/ocp3/xccdf-unlinked-resolved.xml

ocp3/shorthand.xml: ../ocp3/./profiles/opencis-master.profile
ocp3/shorthand.xml: ../ocp3/./profiles/opencis-node.profile
ocp3/shorthand.xml: bash-remediation-functions.xml
ocp3/shorthand.xml: ../ocp3/../applications/benchmark.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/general-principles/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/general-principles/principle-encrypt-transmitted-data/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/general-principles/principle-least-privilege/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/general-principles/principle-separate-servers/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/general-principles/principle-use-security-tools/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/how-to-use/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/how-to-use/intro-formatting-conventions/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/how-to-use/intro-read-sections-completely/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/how-to-use/intro-reboot-required/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/how-to-use/intro-root-shell-assumed/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/intro/how-to-use/intro-test-non-production/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_admission_control_plugin_AlwaysAdmit/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_admission_control_plugin_AlwaysPullImages/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_admission_control_plugin_DenyEscalatingExec/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_admission_control_plugin_EventRateLimit/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_admission_control_plugin_NamespaceLifecycle/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_admission_control_plugin_NodeRestriction/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_admission_control_plugin_PodSecurityPolicy/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_admission_control_plugin_SecurityContextDeny/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_admission_control_plugin_ServiceAccount/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_advanced_auditing/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_anonymous_auth/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_audit_log_maxage/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_audit_log_maxbackup/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_audit_log_maxsize/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_audit_log_path/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_authorization_mode/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_basic_auth/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_client_ca/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_etcd_ca/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_etcd_cert/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_etcd_key/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_experimental_encryption_provider_cipher/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_experimental_encryption_provider_config/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_insecure_allow_any_token/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_insecure_bind_address/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_insecure_port/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_kubelet_certificate_authority/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_kubelet_client_cert/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_kubelet_client_key/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_kubelet_https/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_profiling/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_request_timeout/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_secure_port/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_service_account_ca/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_service_account_private_key/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_service_account_public_key/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_tls_cert/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_tls_cipher_suites/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_tls_private_key/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/api-server/api_server_token_auth/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/controller/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/controller/controller_bind_address/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/controller/controller_disable_profiling/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/controller/controller_rotate_kubelet_server_certs/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/controller/controller_terminated_pod_gc_threshhold/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/controller/controller_use_service_account/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_auto_tls/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_cert_file/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_client_cert_auth/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_key_file/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_max_wals/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_peer_auto_tls/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_peer_cert_file/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_peer_client_cert_auth/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_peer_key_file/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_unique_ca/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/etcd/etcd_wal_dir/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/general/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/general/general_configure_imagepolicywebhook/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/general/general_create_network_segmentation/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/general/general_enable_seccomp/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/general/general_least_privilege_scc/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/general/general_limit_cluster_admin/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/general/general_scc_for_privileged_containers/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/general/general_use_openshift_projects/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/var_kube_authorization_mode.var
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/var_streaming_connection_timeouts.var
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_configure_client_ca/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_configure_event_creation/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_configure_tls_cert/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_configure_tls_key/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_disable_cadvisor_port/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_disable_hostname_override/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_disable_readonly_port/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_enable_client_cert_rotation/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_enable_iptables_util_chains/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_enable_server_cert_rotation/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/kubelet/kubelet_enable_streaming_connections/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_etc_origin/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_admin_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_api_server/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_cni_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_controller_manager/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_etcd/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_openshift_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_openshift_kubeconfig/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_openvswitch/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_scheduler_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_node_config/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_node_kubeconfig/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_openshift_node_client_crt/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_openshift_node_service/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_var_lib_etcd/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_etc_origin/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_admin_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_api_server/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_cni_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_controller_manager/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_etcd/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_openshift_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_openshift_kubeconfig/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_openvswitch/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_scheduler_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_node_config/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_node_kubeconfig/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_openshift_node_client_crt/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_openshift_node_service/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_owner_var_lib_etcd/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_etc_origin/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_admin_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_api_server/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_cni_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_controller_manager/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_etcd/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_openshift_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_openshift_kubeconfig/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_openvswitch/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_scheduler_conf/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_node_config/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_node_kubeconfig/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_openshift_node_client_crt/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_openshift_node_service/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/ocp-permissions/ocp-files/file_permissions_var_lib_etcd/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/scheduler/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openshift/scheduler/scheduler_profiling_argument/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder/cinder_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder/cinder_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder/cinder_glance_tls/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder/cinder_nas_secure_file_permissions/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder/cinder_nova_tls/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder/cinder_osapi_max_request_body/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder/cinder_tls_enabled/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder/cinder_using_keystone/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder_container/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder_container/container_cinder_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder_container/container_cinder_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder_container/container_cinder_glance_tls/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder_container/container_cinder_nas_secure_file_permissions/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder_container/container_cinder_nova_tls/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder_container/container_cinder_osapi_max_request_body/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder_container/container_cinder_tls_enabled/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/cinder_container/container_cinder_using_keystone/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon/horizon_csrf_cookie_secure/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon/horizon_disable_password_reveal/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon/horizon_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon/horizon_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon/horizon_password_autocomplete/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon/horizon_session_cookie_httponly/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon/horizon_session_cookie_secure/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon/horizon_use_ssl/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon_container/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon_container/container_horizon_csrf_cookie_secure/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon_container/container_horizon_disable_password_reveal/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon_container/container_horizon_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon_container/container_horizon_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon_container/container_horizon_password_autocomplete/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon_container/container_horizon_session_cookie_httponly/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon_container/container_horizon_session_cookie_secure/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/horizon_container/container_horizon_use_ssl/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/var_keystone_disable_user_account_days_inactive.var
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/var_keystone_lockout_duration.var
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/var_keystone_lockout_failure_attempts.var
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/keystone_algorithm_hashing/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/keystone_disable_admin_token/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/keystone_disable_user_account_days_inactive/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/keystone_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/keystone_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/keystone_lockout_duration/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/keystone_lockout_failure_attempts/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/keystone_max_request_body_size/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone/keystone_use_ssl/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/container_keystone_algorithm_hashing/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/container_keystone_disable_admin_token/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/container_keystone_disable_user_account_days_inactive/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/container_keystone_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/container_keystone_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/container_keystone_lockout_duration/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/container_keystone_lockout_failure_attempts/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/container_keystone_max_request_body_size/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/keystone_container/container_keystone_use_ssl/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron/neutron_api_use_ssl/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron/neutron_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron/neutron_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron/neutron_use_https/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron/neutron_use_keystone/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron_container/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron_container/container_neutron_api_use_ssl/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron_container/container_neutron_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron_container/container_neutron_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron_container/container_neutron_use_https/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/neutron_container/container_neutron_use_keystone/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova/nova_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova/nova_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova/nova_secure_authentication/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova/nova_secure_glance/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova/nova_use_keystone/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova_container/group.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova_container/container_nova_file_ownership/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova_container/container_nova_file_perms/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova_container/container_nova_secure_authentication/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova_container/container_nova_secure_glance/rule.yml
ocp3/shorthand.xml: ../ocp3/../applications/openstack/nova_container/container_nova_use_keystone/rule.yml
ocp3/shorthand.xml: bash-remediation-functions.xml
ocp3/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp3-content] generating shorthand.xml"
	cd /root/content-0.1.47/build/ocp3 && /usr/bin/cmake -E remove_directory /root/content-0.1.47/build/ocp3/rules
	cd /root/content-0.1.47/build/ocp3 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /root/content-0.1.47/build/ocp3/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/ocp3/product.yml --bash-remediation-fns /root/content-0.1.47/build/bash-remediation-functions.xml --output /root/content-0.1.47/build/ocp3/shorthand.xml build
	cd /root/content-0.1.47/build/ocp3 && /bin/xmllint --format --output /root/content-0.1.47/build/ocp3/shorthand.xml /root/content-0.1.47/build/ocp3/shorthand.xml

ocp3-stats: ocp3/CMakeFiles/ocp3-stats
ocp3-stats: ssg-ocp3-xccdf.xml
ocp3-stats: ocp3/xccdf-linked.xml
ocp3-stats: ocp3/oval-linked.xml
ocp3-stats: ocp3/ocil-linked.xml
ocp3-stats: ocp3/xccdf-unlinked.xml
ocp3-stats: ocp3/oval-unlinked.xml
ocp3-stats: ocp3/ocil-unlinked.xml
ocp3-stats: ocp3/xccdf-unlinked-ocilrefs.xml
ocp3-stats: ocp3/bash-fixes.xml
ocp3-stats: ocp3/ansible-fixes.xml
ocp3-stats: ocp3/puppet-fixes.xml
ocp3-stats: ocp3/anaconda-fixes.xml
ocp3-stats: ocp3/xccdf-unlinked-resolved.xml
ocp3-stats: ocp3/shorthand.xml
ocp3-stats: ocp3/CMakeFiles/ocp3-stats.dir/build.make
.PHONY : ocp3-stats

# Rule to build all files generated by this target.
ocp3/CMakeFiles/ocp3-stats.dir/build: ocp3-stats
.PHONY : ocp3/CMakeFiles/ocp3-stats.dir/build

ocp3/CMakeFiles/ocp3-stats.dir/clean:
	cd /root/content-0.1.47/build/ocp3 && $(CMAKE_COMMAND) -P CMakeFiles/ocp3-stats.dir/cmake_clean.cmake
.PHONY : ocp3/CMakeFiles/ocp3-stats.dir/clean

ocp3/CMakeFiles/ocp3-stats.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/ocp3 /root/content-0.1.47/build /root/content-0.1.47/build/ocp3 /root/content-0.1.47/build/ocp3/CMakeFiles/ocp3-stats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ocp3/CMakeFiles/ocp3-stats.dir/depend


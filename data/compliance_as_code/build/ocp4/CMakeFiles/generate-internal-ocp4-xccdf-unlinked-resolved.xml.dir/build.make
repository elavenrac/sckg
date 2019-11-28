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

# Utility rule file for generate-internal-ocp4-xccdf-unlinked-resolved.xml.

# Include the progress variables for this target.
include ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/progress.make

ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml: ocp4/xccdf-unlinked-resolved.xml

ocp4/xccdf-unlinked-resolved.xml: ocp4/shorthand.xml
ocp4/xccdf-unlinked-resolved.xml: ../ocp4/transforms/shorthand2xccdf.xslt
ocp4/xccdf-unlinked-resolved.xml: ../ocp4/transforms/constants.xslt
ocp4/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp4-content] generating xccdf-unlinked-resolved.xml"
	cd /root/content-0.1.47/build/ocp4 && /bin/xsltproc --stringparam ssg_version 0.1.47 --output /root/content-0.1.47/build/ocp4/xccdf-unlinked-resolved.xml /root/content-0.1.47/ocp4/transforms/shorthand2xccdf.xslt /root/content-0.1.47/build/ocp4/shorthand.xml
	cd /root/content-0.1.47/build/ocp4 && /bin/oscap xccdf resolve -o /root/content-0.1.47/build/ocp4/xccdf-unlinked-resolved.xml /root/content-0.1.47/build/ocp4/xccdf-unlinked-resolved.xml

ocp4/shorthand.xml: ../ocp4/./profiles/opencis-node.profile
ocp4/shorthand.xml: bash-remediation-functions.xml
ocp4/shorthand.xml: ../ocp4/../applications/benchmark.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/general-principles/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/general-principles/principle-encrypt-transmitted-data/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/general-principles/principle-least-privilege/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/general-principles/principle-separate-servers/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/general-principles/principle-use-security-tools/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/how-to-use/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/how-to-use/intro-formatting-conventions/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/how-to-use/intro-read-sections-completely/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/how-to-use/intro-reboot-required/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/how-to-use/intro-root-shell-assumed/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/intro/how-to-use/intro-test-non-production/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_admission_control_plugin_AlwaysAdmit/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_admission_control_plugin_AlwaysPullImages/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_admission_control_plugin_DenyEscalatingExec/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_admission_control_plugin_EventRateLimit/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_admission_control_plugin_NamespaceLifecycle/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_admission_control_plugin_NodeRestriction/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_admission_control_plugin_PodSecurityPolicy/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_admission_control_plugin_SecurityContextDeny/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_admission_control_plugin_ServiceAccount/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_advanced_auditing/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_anonymous_auth/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_audit_log_maxage/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_audit_log_maxbackup/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_audit_log_maxsize/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_audit_log_path/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_authorization_mode/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_basic_auth/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_client_ca/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_etcd_ca/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_etcd_cert/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_etcd_key/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_experimental_encryption_provider_cipher/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_experimental_encryption_provider_config/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_insecure_allow_any_token/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_insecure_bind_address/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_insecure_port/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_kubelet_certificate_authority/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_kubelet_client_cert/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_kubelet_client_key/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_kubelet_https/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_profiling/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_request_timeout/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_secure_port/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_service_account_ca/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_service_account_private_key/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_service_account_public_key/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_tls_cert/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_tls_cipher_suites/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_tls_private_key/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/api-server/api_server_token_auth/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/controller/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/controller/controller_bind_address/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/controller/controller_disable_profiling/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/controller/controller_rotate_kubelet_server_certs/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/controller/controller_terminated_pod_gc_threshhold/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/controller/controller_use_service_account/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_auto_tls/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_cert_file/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_client_cert_auth/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_key_file/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_max_wals/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_peer_auto_tls/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_peer_cert_file/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_peer_client_cert_auth/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_peer_key_file/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_unique_ca/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/etcd/etcd_wal_dir/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/general/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/general/general_configure_imagepolicywebhook/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/general/general_create_network_segmentation/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/general/general_enable_seccomp/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/general/general_least_privilege_scc/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/general/general_limit_cluster_admin/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/general/general_scc_for_privileged_containers/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/general/general_use_openshift_projects/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/var_kube_authorization_mode.var
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/var_streaming_connection_timeouts.var
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_configure_client_ca/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_configure_event_creation/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_configure_tls_cert/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_configure_tls_key/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_disable_cadvisor_port/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_disable_hostname_override/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_disable_readonly_port/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_enable_client_cert_rotation/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_enable_iptables_util_chains/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_enable_server_cert_rotation/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/kubelet/kubelet_enable_streaming_connections/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_etc_origin/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_admin_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_api_server/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_cni_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_controller_manager/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_etcd/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_openshift_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_openshift_kubeconfig/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_openvswitch/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_master_scheduler_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_node_config/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_node_kubeconfig/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_openshift_node_client_crt/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_openshift_node_service/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_groupowner_var_lib_etcd/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_etc_origin/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_admin_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_api_server/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_cni_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_controller_manager/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_etcd/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_openshift_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_openshift_kubeconfig/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_openvswitch/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_master_scheduler_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_node_config/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_node_kubeconfig/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_openshift_node_client_crt/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_openshift_node_service/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_owner_var_lib_etcd/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_etc_origin/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_admin_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_api_server/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_cni_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_controller_manager/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_etcd/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_openshift_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_openshift_kubeconfig/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_openvswitch/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_master_scheduler_conf/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_node_config/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_node_kubeconfig/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_openshift_node_client_crt/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_openshift_node_service/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/ocp-permissions/ocp-files/file_permissions_var_lib_etcd/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/scheduler/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openshift/scheduler/scheduler_profiling_argument/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder/cinder_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder/cinder_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder/cinder_glance_tls/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder/cinder_nas_secure_file_permissions/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder/cinder_nova_tls/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder/cinder_osapi_max_request_body/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder/cinder_tls_enabled/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder/cinder_using_keystone/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder_container/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder_container/container_cinder_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder_container/container_cinder_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder_container/container_cinder_glance_tls/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder_container/container_cinder_nas_secure_file_permissions/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder_container/container_cinder_nova_tls/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder_container/container_cinder_osapi_max_request_body/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder_container/container_cinder_tls_enabled/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/cinder_container/container_cinder_using_keystone/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon/horizon_csrf_cookie_secure/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon/horizon_disable_password_reveal/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon/horizon_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon/horizon_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon/horizon_password_autocomplete/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon/horizon_session_cookie_httponly/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon/horizon_session_cookie_secure/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon/horizon_use_ssl/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon_container/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon_container/container_horizon_csrf_cookie_secure/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon_container/container_horizon_disable_password_reveal/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon_container/container_horizon_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon_container/container_horizon_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon_container/container_horizon_password_autocomplete/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon_container/container_horizon_session_cookie_httponly/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon_container/container_horizon_session_cookie_secure/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/horizon_container/container_horizon_use_ssl/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/var_keystone_disable_user_account_days_inactive.var
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/var_keystone_lockout_duration.var
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/var_keystone_lockout_failure_attempts.var
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/keystone_algorithm_hashing/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/keystone_disable_admin_token/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/keystone_disable_user_account_days_inactive/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/keystone_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/keystone_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/keystone_lockout_duration/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/keystone_lockout_failure_attempts/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/keystone_max_request_body_size/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone/keystone_use_ssl/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/container_keystone_algorithm_hashing/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/container_keystone_disable_admin_token/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/container_keystone_disable_user_account_days_inactive/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/container_keystone_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/container_keystone_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/container_keystone_lockout_duration/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/container_keystone_lockout_failure_attempts/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/container_keystone_max_request_body_size/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/keystone_container/container_keystone_use_ssl/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron/neutron_api_use_ssl/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron/neutron_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron/neutron_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron/neutron_use_https/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron/neutron_use_keystone/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron_container/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron_container/container_neutron_api_use_ssl/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron_container/container_neutron_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron_container/container_neutron_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron_container/container_neutron_use_https/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/neutron_container/container_neutron_use_keystone/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova/nova_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova/nova_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova/nova_secure_authentication/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova/nova_secure_glance/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova/nova_use_keystone/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova_container/group.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova_container/container_nova_file_ownership/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova_container/container_nova_file_perms/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova_container/container_nova_secure_authentication/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova_container/container_nova_secure_glance/rule.yml
ocp4/shorthand.xml: ../ocp4/../applications/openstack/nova_container/container_nova_use_keystone/rule.yml
ocp4/shorthand.xml: bash-remediation-functions.xml
ocp4/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
	$(CMAKE_COMMAND) -E cmake_progress_report /root/content-0.1.47/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "[ocp4-content] generating shorthand.xml"
	cd /root/content-0.1.47/build/ocp4 && /usr/bin/cmake -E remove_directory /root/content-0.1.47/build/ocp4/rules
	cd /root/content-0.1.47/build/ocp4 && env PYTHONPATH=/root/content-0.1.47 /bin/python /root/content-0.1.47/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /root/content-0.1.47/build/ocp4/rules --build-config-yaml /root/content-0.1.47/build/build_config.yml --product-yaml /root/content-0.1.47/ocp4/product.yml --bash-remediation-fns /root/content-0.1.47/build/bash-remediation-functions.xml --output /root/content-0.1.47/build/ocp4/shorthand.xml build
	cd /root/content-0.1.47/build/ocp4 && /bin/xmllint --format --output /root/content-0.1.47/build/ocp4/shorthand.xml /root/content-0.1.47/build/ocp4/shorthand.xml

generate-internal-ocp4-xccdf-unlinked-resolved.xml: ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml
generate-internal-ocp4-xccdf-unlinked-resolved.xml: ocp4/xccdf-unlinked-resolved.xml
generate-internal-ocp4-xccdf-unlinked-resolved.xml: ocp4/shorthand.xml
generate-internal-ocp4-xccdf-unlinked-resolved.xml: ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/build.make
.PHONY : generate-internal-ocp4-xccdf-unlinked-resolved.xml

# Rule to build all files generated by this target.
ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/build: generate-internal-ocp4-xccdf-unlinked-resolved.xml
.PHONY : ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/build

ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/clean:
	cd /root/content-0.1.47/build/ocp4 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/cmake_clean.cmake
.PHONY : ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/clean

ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/depend:
	cd /root/content-0.1.47/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/content-0.1.47 /root/content-0.1.47/ocp4 /root/content-0.1.47/build /root/content-0.1.47/build/ocp4 /root/content-0.1.47/build/ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ocp4/CMakeFiles/generate-internal-ocp4-xccdf-unlinked-resolved.xml.dir/depend


# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_selinuxuser_rw_noexattrfile

setsebool -P selinuxuser_rw_noexattrfile $var_selinuxuser_rw_noexattrfile
# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_nfs_export_all_rw

setsebool -P nfs_export_all_rw $var_nfs_export_all_rw
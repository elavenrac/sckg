# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
# Include source function library.
. /usr/share/scap-security-guide/remediation_functions


populate var_ksmtuned_use_cifs

setsebool -P ksmtuned_use_cifs $var_ksmtuned_use_cifs
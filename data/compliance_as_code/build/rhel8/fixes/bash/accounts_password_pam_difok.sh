# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = false
# disruption = low
# strategy = restrict
. /usr/share/scap-security-guide/remediation_functions
populate var_password_pam_difok



replace_or_append '/etc/security/pwquality.conf' '^difok' $var_password_pam_difok '@CCENUM@' '%s = %s'
# platform = multi_platform_rhel,multi_platform_ol,multi_platform_fedora
. /usr/share/scap-security-guide/remediation_functions
populate var_auditd_max_log_file_action

AUDITCONFIG=/etc/audit/auditd.conf

replace_or_append $AUDITCONFIG '^max_log_file_action' "$var_auditd_max_log_file_action" "@CCENUM@"
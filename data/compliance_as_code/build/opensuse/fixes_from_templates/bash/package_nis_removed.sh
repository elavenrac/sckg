# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove nis
#	   from the system, and may remove any packages
#	   that depend on nis. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

printf '%s\n' "Can't generate a remediation for zypper" >&2
exit 1
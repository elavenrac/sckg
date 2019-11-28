# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# reboot = true
# strategy = disable
# complexity = low
# disruption = medium
. /usr/share/scap-security-guide/remediation_functions

#
# Set runtime for net.ipv4.ip_forward
#
/sbin/sysctl -q -n -w net.ipv4.ip_forward="0"

#
# If net.ipv4.ip_forward present in /etc/sysctl.conf, change value to "0"
#	else, add "net.ipv4.ip_forward = 0" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv4.ip_forward' "0" '@CCENUM@'
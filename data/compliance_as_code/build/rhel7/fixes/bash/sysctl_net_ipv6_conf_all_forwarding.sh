# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv
# complexity = low
# reboot = true
# disruption = medium
# strategy = disable
. /usr/share/scap-security-guide/remediation_functions
populate sysctl_net_ipv6_conf_all_forwarding_value

#
# Set runtime for net.ipv6.conf.all.forwarding
#
/sbin/sysctl -q -n -w net.ipv6.conf.all.forwarding="$sysctl_net_ipv6_conf_all_forwarding_value"

#
# If net.ipv6.conf.all.forwarding present in /etc/sysctl.conf, change value to appropriate value
#	else, add "net.ipv6.conf.all.forwarding = value" to /etc/sysctl.conf
#
replace_or_append '/etc/sysctl.conf' '^net.ipv6.conf.all.forwarding' "$sysctl_net_ipv6_conf_all_forwarding_value" '@CCENUM@'
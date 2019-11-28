# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable

# CAUTION: This remediation script will remove squid
#	   from the system, and may remove any packages
#	   that depend on squid. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "squid" ; then
    yum remove -y "squid"
fi
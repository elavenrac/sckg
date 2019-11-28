# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable

# CAUTION: This remediation script will remove xinetd
#	   from the system, and may remove any packages
#	   that depend on xinetd. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "xinetd" ; then
    yum remove -y "xinetd"
fi
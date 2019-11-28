# platform = multi_platform_all
# reboot = false
# strategy = disable
# complexity = low
# disruption = low

# CAUTION: This remediation script will remove openssh-server
#	   from the system, and may remove any packages
#	   that depend on openssh-server. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "openssh-server" ; then
    dnf remove -y "openssh-server"
fi
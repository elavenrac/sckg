# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable

# CAUTION: This remediation script will remove geolite2-city
#	   from the system, and may remove any packages
#	   that depend on geolite2-city. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

if rpm -q --quiet "geolite2-city" ; then
    yum remove -y "geolite2-city"
fi
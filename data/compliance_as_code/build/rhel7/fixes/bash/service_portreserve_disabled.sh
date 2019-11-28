# platform = multi_platform_rhel,multi_platform_fedora,multi_platform_ol,multi_platform_rhv,multi_platform_sle
# complexity = low
# reboot = false
# disruption = low
# strategy = disable


SYSTEMCTL_EXEC='/usr/bin/systemctl'
"$SYSTEMCTL_EXEC" stop 'portreserve.service'
"$SYSTEMCTL_EXEC" disable 'portreserve.service'
"$SYSTEMCTL_EXEC" mask 'portreserve.service'
# Disable socket activation if we have a unit file for it
if "$SYSTEMCTL_EXEC" list-unit-files | grep -q '^portreserve.socket'; then
    "$SYSTEMCTL_EXEC" stop 'portreserve.socket'
    "$SYSTEMCTL_EXEC" disable 'portreserve.socket'
    "$SYSTEMCTL_EXEC" mask 'portreserve.socket'
fi
# The service may not be running because it has been started and failed,
# so let's reset the state so OVAL checks pass.
# Service should be 'inactive', not 'failed' after reboot though.
"$SYSTEMCTL_EXEC" reset-failed 'portreserve.service' || true
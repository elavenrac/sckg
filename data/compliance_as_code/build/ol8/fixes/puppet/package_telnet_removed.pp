# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable
include remove_telnet

class remove_telnet {
  package { 'telnet':
    ensure => 'purged',
  }
}
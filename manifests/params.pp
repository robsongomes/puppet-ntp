# == Class: ntp::params
#
class puppet_ntp::params {

  case $facts['os']['family'] {
    'RedHat': {
      $group = 'wheel'
      $service_name = 'ntpd'
    }
    default: {
      $group = 'root'
      $service_name = 'ntp'
    }
  }

  $conf_file = '/etc/ntp.conf'

  $package_name = 'ntp'
}

# == Class: ntp::service
#
class ntp::service {
  case $facts['os']['family'] {
    'RedHat': {
      $service_name = 'ntpd'
    }
    default: {
      $service_name = 'ntp'
    }
  }

  service { 'ntp':
    ensure    => running,
    enable    => true,
    name      => $service_name,
    subscribe => File['ntp::config'],
  }
}

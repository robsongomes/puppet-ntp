# == Class: ntp::service
#
class puppet_ntp::service inherits puppet_ntp {

  service {$service_name:
    ensure    => running,
    enable    => true,
  }
}

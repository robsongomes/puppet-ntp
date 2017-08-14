# == Class: ntp::service
#
class puppet_ntp::service (
  $service_name = $::puppet_ntp::params::service_name,
) inherits puppet_ntp::params {
  service { 'ntp':
    ensure    => running,
    enable    => true,
    name      => $service_name,
    subscribe => File['puppet_ntp::config'],
  }
}

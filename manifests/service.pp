# == Class: ntp::service
#
class ntp::service (
  $service_name = $::ntp::params::service_name
) inherits ntp::params {
  service { 'ntp':
    ensure    => running,
    enable    => true,
    name      => $service_name,
    subscribe => File['ntp::config'],
  }
}

# == Class: puppet_ntp
#
class puppet_ntp (
  $service_name = $::puppet_ntp::params::service_name,
  $group        = $::puppet_ntp::params::group,
  $conf_file    = $::puppet_ntp::params::conf_file,
  $package_name = $::puppet_ntp::params::package_name,
) inherits puppet_ntp::params {

  include puppet_ntp::install
  include puppet_ntp::config
  include puppet_ntp::service

}

# == Class: puppet_ntp
#
class puppet_ntp (
  String $service_name = $::puppet_ntp::params::service_name,
  String $group        = $::puppet_ntp::params::group,
  String $conf_file    = $::puppet_ntp::params::conf_file,
  String $package_name = $::puppet_ntp::params::package_name,
) inherits puppet_ntp::params {

  include puppet_ntp::install
  include puppet_ntp::config
  include puppet_ntp::service

}

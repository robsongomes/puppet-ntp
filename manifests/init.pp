# == Class: puppet_ntp
#
class puppet_ntp (
  String $service_name   = $::puppet_ntp::params::service_name,
  String $group          = $::puppet_ntp::params::group,
  String $conf_file      = $::puppet_ntp::params::conf_file,
  String $package_name   = $::puppet_ntp::params::package_name,
  Array[String] $servers = $::puppet_ntp::params::servers,
  Boolean $monitor       = $::puppet_ntp::params::monitor,
) inherits puppet_ntp::params {

  contain puppet_ntp::install
  contain puppet_ntp::config
  contain puppet_ntp::service

}

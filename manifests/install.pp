# == Class: puppet_ntp::install
#
class puppet_ntp::install inherits puppet_ntp {

  package { $package_name:
    ensure => installed,
  }

}

# == Class: puppet_ntp
#
class puppet_ntp {

  package { 'ntp':
    ensure => installed,
    before => Class['puppet_ntp::config'],
  }

  include puppet_ntp::service
  include puppet_ntp::config

}

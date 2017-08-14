# == Class: puppet_ntp
#
class puppet_ntp {

  package { 'ntp':
    ensure => installed,
    before => Class['ntp::config'],
  }

  include ntp::service
  include ntp::config

}

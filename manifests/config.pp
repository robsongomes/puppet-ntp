# == Class: ntp::config
#
class ntp::config (
  $group = $::ntp::params::group
) inherits ntp::params {
  file { '/etc/ntp.conf':
    ensure  => file,
    content => file('ntp/ntp.conf'),
    owner   => 'root',
    group   => $group,
    mode    => '0664',
    notify  => Service['ntp::service'],
  }
}

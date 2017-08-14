# == Class: ntp::config
#
class puppet_ntp::config (
  $group = $::puppet_ntp::params::group,
) inherits puppet_ntp::params {
  file { '/etc/ntp.conf':
    ensure  => file,
    content => file('puppet_ntp/ntp.conf'),
    owner   => 'root',
    group   => $group,
    mode    => '0664',
    notify  => Service['puppet_ntp::service'],
  }
}

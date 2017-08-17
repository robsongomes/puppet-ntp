# == Class: ntp::config
#
class puppet_ntp::config inherits puppet_ntp {

  file { $conf_file:
    ensure  => file,
    content => file('puppet_ntp/ntp.conf'),
    owner   => 'root',
    group   => $group,
    mode    => '0664',
  }
}

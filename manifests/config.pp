# == Class: ntp::config
#
class ntp::config {
  case $facts['os']['family'] {
    'RedHat': {
      $group = 'wheel'
    }
    default: {
      $group = 'root'
    }
  }

  file { '/etc/ntp.conf':
    ensure  => file,
    content => file('ntp/ntp.conf'),
    owner   => 'root',
    group   => $group,
    mode    => '0664',
    notify  => Service['ntp::service'],
  }
}

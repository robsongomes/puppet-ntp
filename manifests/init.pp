# == Class: puppet_ntp
#
class puppet_ntp(
  $ntp_conf = "#Managed by puppet\n server 10.20.1.2 iburst\n driftfile /var/lib/ntp/drift"
  ) {

  case $facts['os']['family'] {
    'RedHat': {
      $service_name = 'ntpd'
      $group = 'wheel'
    }
    default: {
      $service_name = 'ntp'
      $group = 'root'
    }
  }

  package { 'ntp':
    ensure => installed,
  }

  file { '/etc/ntp.conf':
    ensure  => file,
    content => $ntp_conf,
    owner   => 'root',
    group   => $group,
    mode    => '0664',
  }

  service { $service_name:
    ensure => running,
    enable => true,
  }
}

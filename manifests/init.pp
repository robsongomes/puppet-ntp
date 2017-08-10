# == Class: puppet_ntp
#
class puppet_ntp(
  $ntp_conf = "#Managed by puppet\n server 10.20.1.2 iburst\n driftfile /var/lib/ntp/drift"
  ) {
  package { 'ntp':
    ensure => installed,
  }

  file { '/etc/ntp.conf':
    ensure  => file,
    content => $ntp_conf,
    owner   => 'root',
    group   => 'wheel',
    mode    => '0664',
  }

  service { 'ntpd':
    ensure => running,
    enable => true,
  }
}

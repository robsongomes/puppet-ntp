# == Class: ntp::config
#
class puppet_ntp::config inherits puppet_ntp {

  file { $conf_file:
    ensure  => file,
    # content => epp('puppet_ntp/ntp.conf.epp',{'servers' => $puppet_ntp::servers, 'monitor' => $puppet_ntp::monitor}),
    content => template('puppet_ntp/ntp.conf.erb'),
    owner   => 'root',
    group   => $group,
    mode    => '0664',
  }
}

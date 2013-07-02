class monit::unicorn {
  $daemon_time = 60
  $idfile = '/var/.monit.id'
  $statefile = '/var/.monit.state'
  $event_basebir = '/var/monit'

  file{ '/etc/monit.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0600',
    content => template('monit/monit.conf.erb'),
    notify  => Service['monit'],
    require => Package['monit'],
  }

  file{ '/etc/monit.d':
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0755',
    notify  => Service['monit'],
    require => Package['monit'],
  }
}

class monit::unicorn {
  $unicorn_pid = '/var/www/sample_app/unicorn.pid'

  file{ '/etc/init.d/unicorn':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0755',
    content => template('monit/unicorn.init.erb'),
    notify  => Service['monit'],
    require => Package['monit'],
  }

  file{ '/etc/monit.d/unicorn':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('monit/unicorn.monit.erb'),
    notify  => Service['monit'],
    require => Package['monit'],
  }
}

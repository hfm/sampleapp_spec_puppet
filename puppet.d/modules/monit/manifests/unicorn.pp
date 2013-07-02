class monit::unicorn {
  file{ '/etc/monit.d/unicorn':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('monit/unicorn.erb'),
    notify  => Service['monit'],
    require => Package['monit'],
  }
}

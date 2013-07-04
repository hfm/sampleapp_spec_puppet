class monit::unicorn {
  $rails_root='/var/www/rails/current'
  $unicorn_pid="${rails_root}/tmp/pids/unicorn.pid"

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

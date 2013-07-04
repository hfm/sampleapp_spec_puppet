class monit::unicorn {
  $sh_path='/usr/local/ruby-2.0.0-p247/bin:$PATH'
  $rails_root='/var/www/rails/current'
  $unicorn_pid="${rails_root}/tmp/pids/unicorn.pid"
  $cmd="\"cd ${rails_root}; bundle exec unicorn -c config/unicorn.rb -E production -D\""
  $appuser=okkun

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

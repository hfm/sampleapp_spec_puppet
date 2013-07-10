class app::sampleapp {
  file { '/var/www':
    ensure  => directory,
    owner   => 1000,
    group   => 1000
  }

  $sh_path='/usr/local/ruby-2.0.0-p247/bin:$PATH'
  $rails_root='/var/www/rails/current'
  $unicorn_pid="${rails_root}/tmp/pids/unicorn.pid"
  $cmd="\"cd ${rails_root}; bundle exec unicorn -c config/unicorn.rb -E production -D\""
  $appuser=app

  file { '/etc/init.d/unicorn':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0755',
    content => template('app/sampleapp/unicorn.erb')
  }
}

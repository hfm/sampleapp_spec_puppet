class sampleapp::bundle {
  $app_path = '/var/www/sample_app'

  exec { 'sampleapp::bundle':
    command => "bundle install",
    user    => root,
    group   => 1000,
    cwd     => $app_path,
    path    => ['/usr/local/ruby-2.0.0-p247/bin', '/bin', '/usr/bin'],
    timeout => 0
  }

  exec { 'sampleapp::update':
    command => "bundle update",
    user    => root,
    group   => 1000,
    cwd     => $app_path,
    path    => ['/usr/local/ruby-2.0.0-p247/bin', '/bin', '/usr/bin'],
    timeout => 0,
    require => Exec['sampleapp::bundle']
  }

  exec { 'sampleapp::dbmigrate':
    command => 'bundle exec rake db:migrate RAILS_ENV=production',
    user    => root,
    group   => 1000,
    cwd     => $app_path,
    path    => ['/usr/local/ruby-2.0.0-p247/bin', '/bin', '/usr/bin'],
    timeout => 0,
    require => Exec['sampleapp::update']
  }
}

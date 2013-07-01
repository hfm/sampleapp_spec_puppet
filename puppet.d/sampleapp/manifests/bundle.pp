class sampleapp::bundle {
  $app_path = '/var/www/sample_app'

  exec { 'sampleapp::bundle':
    command => "bundle install --path=vendor/bundle",
    user    => 1000,
    group   => 1000,
    cwd     => $app_path,
    path    => ['/bin', '/usr/bin', '/usr/local/bin'],
    timeout => 0
  }
}

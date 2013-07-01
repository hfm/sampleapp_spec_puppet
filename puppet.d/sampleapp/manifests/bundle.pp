class sampleapp::bundle {
  $app_path = '/var/www/sample_app'
  exec { 'sampleapp::bundle':
    command => "bundle install --path=vendor/bundle",
    user    => 1000,
    group   => 1000,
    creates => $app_path,
    cwd     => $app_path,
    path    => ['/bin', '/usr/bin'],
    timeout => 100
  }
}

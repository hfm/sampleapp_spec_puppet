class sampleapp::bundle {
  $app_path = '/var/www/sample_app'
  exec { 'sampleapp::bundle':
    command => "bundle install",
    user    => 'root',
    group   => 'appuser',
    creates => $app_path,
    cwd     => $app_path,
    path    => ['/bin', '/usr/bin'],
    timeout => 100
  }
}

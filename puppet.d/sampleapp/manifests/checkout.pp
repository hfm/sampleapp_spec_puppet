class sampleapp::checkout {
  $app_path = '/var/www/'
  exec { 'rbenv::install':
    command => "git clone https://github.com/Tacahilo/sample_app.git ${app_path}",
    user    => 'okkun',
    group   => 'appuser',
    creates => $app_path,
    path    => ['/bin', '/usr/bin'],
    timeout => 100
  }
}

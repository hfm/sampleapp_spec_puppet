class sampleapp::checkout {
  $app_path = '/var/www/sample_app'

  exec { 'sampleapp::install':
    command => "git clone https://github.com/Tacahilo/sample_app.git ${app_path}",
    user    => 'root',
    group   => 1000,
    creates => $app_path,
    path    => ['/bin', '/usr/bin'],
    timeout => 100
  }
}

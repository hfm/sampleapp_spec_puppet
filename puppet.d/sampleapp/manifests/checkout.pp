class sampleapp::checkout {
  $app_path = '/var/www/sample_app'

  file { '/var/www/sample_app':
    ensure => directory,
    owner  => 1000,
    group  => 1000,
    mode   => '0755',
  }

  exec { 'sampleapp::install':
    command => "git clone https://github.com/Tacahilo/sample_app.git ${app_path}",
    user    => 1000,
    group   => 1000,
    creates => $app_path,
    path    => ['/bin', '/usr/bin'],
    timeout => 0,
    require => File['/var/www/sample_app']
  }
}

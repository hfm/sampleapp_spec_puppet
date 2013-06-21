class sampleapp::app_dir {
  file { '/var/www':
    ensure  => directory,
    user    => 'okkun',
    group   => 'appuser'
  }
}

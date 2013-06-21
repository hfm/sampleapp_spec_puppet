class sampleapp::app_dir {
  file { '/var/www':
    ensure  => directory,
    user    => 'root',
    group   => 'appuser'
  }
}

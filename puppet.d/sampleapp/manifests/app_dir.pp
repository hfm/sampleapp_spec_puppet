class sampleapp::app_dir {
  file { '/var/www':
    ensure  => directory,
    owner   => 1000,
    group   => 1000
  }
}

class sampleapp::app_dir {
  file { '/var/www':
    ensure  => present,
    owner   => 'root',
    group   => 'appuser'
  }
}

class sampleapp::app_dir {
  file { '/var/www':
    ensure  => present,
    user    => 'root',
    group   => 'appuser'
  }
}

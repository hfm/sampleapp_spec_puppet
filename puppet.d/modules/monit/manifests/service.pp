class monit::service {
  service { 'monit':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    subscribe  => File['/etc/monit.conf'],
    require    => File['/etc/monit.conf']
  }
}

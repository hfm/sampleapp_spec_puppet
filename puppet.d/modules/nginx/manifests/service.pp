class nginx::service {
  service { 'nginx':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    subscribe  => File['/etc/nginx/nginx.conf'],
    require    => File['/etc/nginx/nginx.conf']
  }
}

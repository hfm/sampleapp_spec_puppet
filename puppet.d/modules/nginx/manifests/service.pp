class nginx::service {
  service { 'nginx':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    notify     => File['/etc/nginx/nginx.conf'],
    require    => File['/etc/nginx/nginx.conf']
  }
}

class memcached::service {
  service { 'memcached':
    ensure     => running,
    enable     => true,
    hasrestart => true,
  }
}

class memcache::packages {
  package { 'memcached':
    ensure => installed
  }
}

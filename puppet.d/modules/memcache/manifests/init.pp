class memcache {
  include memcache::install
  include memcach::service

  Class['memcache::install']
  -> Class['memcache::service']
}

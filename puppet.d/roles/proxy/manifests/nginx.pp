class proxy::nginx {
  include ::nginx::install
  include ::nginx::service
  include proxy::nginx::config

     Class['::nginx::install']
  -> Class['proxy::nginx::config']
  -> Class['::nginx::service']
}

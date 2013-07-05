class app::nginx {
  include ::nginx
  include app::nginx::config

     Class['::nginx::install']
  -> Class['app::nginx::config']
  -> Class['::nginx::service']
}

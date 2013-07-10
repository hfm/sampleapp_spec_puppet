class app::nginx {
  include ::nginx::install
  include app::nginx::config
  include ::nginx::service

     Class['::nginx::install']
  -> Class['app::nginx::config']
  -> Class['::nginx::service']
}

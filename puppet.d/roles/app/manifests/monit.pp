class app::monit {
  include ::monit::install
  include ::monit::config
  include app::monit::config
  include ::monit::service

  Class['::monit::install']
  -> Class['::monit::config']
  -> Class['app::monit::config']
  -> Class['::monit::service']
}

class app::monit {
  include ::monit
  include app::monit::config

  Class['::monit::install']
  -> Class['::monit::config']
  -> Class['app::monit::config']
  -> Class['::monit::service']
}

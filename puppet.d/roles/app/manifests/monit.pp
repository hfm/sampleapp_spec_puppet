class app::monit {
  include ::monit
  include app::monit::unicorn

  Class['::monit::install']
  -> Class['::monit::config']
  -> Class['app::monit::unicorn']
  -> Class['::monit::service']
}

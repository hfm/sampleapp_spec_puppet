class monit {
  include monit::install
  include monit::config
  include monit::unicorn
  include monit::service

  Class['monit::install']
  -> Class['monit::config']
  -> Class['monit::unicorn']
  -> Class['monit::service']
}

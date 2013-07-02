class monit {
  include monit::install
  include monit::config
  include monit::unicorn

  Class['monit::install']
  -> Class['monit::config']
  -> Class['monit::unicorn']
}

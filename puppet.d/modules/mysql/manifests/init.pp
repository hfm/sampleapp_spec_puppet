class mysql {
  include mysql::install
  include mysql::config
  include mysql::service
  include mysql::setup
  include ::var
  include ::passwd

  Class['mysql::install']
  -> Class['mysql::config']
  -> Class['mysql::service']
  -> Class['mysql::setup']
}

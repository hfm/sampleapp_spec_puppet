class mysql {
  include mysql::install
  include mysql::config
  include mysql::service
  include mysql::setup
  include mysql::createdb

  Class['mysql::install']
  -> Class['mysql::config']
  -> Class['mysql::service']
  -> Class['mysql::setup']
  ~> Class['mysql::createdb']
}

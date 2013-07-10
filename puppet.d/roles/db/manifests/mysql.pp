class db::mysql {
  include ::mysql::install
  include db::mysql::config
  include ::mysql::service
  include db::mysql::setup

     Class['::mysql::install']
  -> Class['db::mysql::config']
  -> Class['::mysql::service']
  -> Class['db::mysql::setup']
}

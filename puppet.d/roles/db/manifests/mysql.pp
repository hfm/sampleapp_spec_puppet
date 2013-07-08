class db::mysql {
  include ::mysql
  include db::mysql::config
  include db::mysql::setup

     Class['::mysql::install']
  -> Class['db::mysql::config']
  -> Class['::mysql::service']
  -> Class['db::mysql::setup']
}

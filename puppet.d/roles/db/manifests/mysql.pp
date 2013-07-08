class db::mysql {
  include ::mysql
  include db::mysql::setup

     Class['::mysql::install']
  -> Class['::mysql::config']
  -> Class['::mysql::service']
  -> Class['db::mysql::setup']
}

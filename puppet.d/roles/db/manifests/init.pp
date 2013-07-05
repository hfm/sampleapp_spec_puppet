class db {
  include ::mysql
  include db::mysql

     Class['::mysql::install']
  -> Class['::mysql::config']
  -> Class['::mysql::service']
  -> Class['db::mysql::setup']
}

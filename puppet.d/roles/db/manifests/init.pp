class db {
  include ::base
  include db::mysql

  Class['::base']
  -> Class['db::mysql']
}

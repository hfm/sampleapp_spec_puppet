class db {
  include db::user_group
  include db::base
  include db::mysql

     Class['db::user_group']
  -> Class['db::base']
  -> Class['db::mysql']
}

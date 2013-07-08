class db {
  include db::user_group
  include db::common
  include db::mysql

     Class['db::user_group']
  -> Class['db::common']
  -> Class['db::mysql']
}

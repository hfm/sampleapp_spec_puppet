class base {
  include base::user_group
  include base::sudoers
  include base::pubkey

  Class['base::user_group']
  -> Class['base::sudoers']
  -> Class['base::pubkey']
}

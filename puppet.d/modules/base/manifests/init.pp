class base {
  include base::packages
  include base::sudoers
  include base::pubkey

  Class['base::packages']
  -> Class['base::sudoers']
  -> Class['base::pubkey']
}

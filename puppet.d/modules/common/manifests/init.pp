class common {
  include common::packages
  include common::sudoers
  include common::pubkey

  Class['common::packages']
  -> Class['common::sudoers']
  -> Class['common::pubkey']
}

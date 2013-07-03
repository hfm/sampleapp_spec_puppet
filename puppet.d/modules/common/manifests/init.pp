class common {
  include common::packages
  include common::pubkey

  Class['common::packages']
  Class['common::pubkey']
}

class user_group {
  include user_group::setup
  include user_group::sudoers

  Class['user_group::setup']
  -> Class['user_group::sudoers']
}

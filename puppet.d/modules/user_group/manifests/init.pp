class user_group {
  include user_group::setup

  Class['user_group::setup']
}

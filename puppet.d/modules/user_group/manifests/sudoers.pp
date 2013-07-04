class user_group::sudoers {
  file{ '/etc/sudoers':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0440',
    content => template('user_group/sudoers')
  }
}

class base::sudoers{
  file{ '/etc/sudoers':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0440',
    content => template('base/sudoers')
  }
}

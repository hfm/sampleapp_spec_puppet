class common::pubkey {
  file{ '/home/hfm/.ssh/authorized_keys':
    ensure  => present,
    owner   => 'hfm',
    group   => 'paperboy',
    mode    => '0600',
    content => template('common/authorized_keys')
  }
}

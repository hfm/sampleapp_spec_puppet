class common::pubkey {
  file{ '/home/okkun/.ssh/authorized_keys':
    ensure  => present,
    owner   => 1000,
    group   => 1000,
    mode    => '0600',
    content => template('common/authorized_keys')
  }
}

class base::pubkey {
  file{ '/home/app/.ssh':
    ensure  => directory,
    owner   => 1000,
    group   => 1000,
    mode    => '0700'
  }

  file{ '/home/app/.ssh/authorized_keys':
    ensure  => present,
    owner   => 1000,
    group   => 1000,
    mode    => '0600',
    content => template('base/authorized_keys'),
    require => File['/home/app/.ssh']
  }
}

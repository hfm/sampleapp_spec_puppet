class base:user_group {
  user { 'app':
    ensure     => present,
    comment    => 'app',
    home       => '/home/app',
    managehome => true,
    shell      => '/bin/bash',
    uid        => 1000,
    gid        => 1000
  }

  group { 'appuser':
    ensure => present,
    gid    => 1000
  }
}

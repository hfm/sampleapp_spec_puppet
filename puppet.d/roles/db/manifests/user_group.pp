class db::user_group {
  user { 'okkun':
    ensure     => present,
    comment    => 'okkun',
    home       => '/home/okkun',
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

class user_group::setup {
  user { 'okkun':
    ensure     => present,
    comment    => 'okkun',
    home       => '/home/okkun',
    managehome => true,
    shell      => '/bin/bash',
    uid        => 1000
    gid        => 'appuser'
  }
  
  group { 'appuser':
    ensure => present,
    gid    => 1000
  }
}

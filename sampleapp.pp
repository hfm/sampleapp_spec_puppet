$packages = [
  'git',
  'zsh'
]

package { $packages:
  ensure => installed
}

user { 'okkun':
  ensure     => present,
  comment    => 'app001',
  home       => '/home/okkun',
  managehome => true,
  shell      => '/bin/zsh',
  uid        => 1000,
  gid        => 1000
}

group { 'appuser':
  ensure => present,
  gid    => 1000
}

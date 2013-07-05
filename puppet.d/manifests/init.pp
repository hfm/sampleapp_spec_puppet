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

include common
include nginx
include mysql
include memcached
include ruby
include sampleapp
include monit

Class['common']
-> Class['nginx']
-> Class['mysql']
-> Class['memcached']
-> Class['ruby']
-> Class['sampleapp']
-> Class['monit']

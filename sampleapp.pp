$packages = [
  'git',
  'mysql-devel',
  'mysql-server',
  'nginx',
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

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  require    => File['/etc/nginx/nginx.conf'],
  subscribe  => File['/etc/nginx/nginx.conf']
}

file { '/etc/nginx/nginx.conf':
  ensure  => present,
  owner   => root,
  group   => root,
  mode    => '0644',
  content => template('nginx.conf'),
  require => Package['nginx'],
  notify  => Service['nginx']
}

file { '/etc/nginx/conf.d/rails.conf':
  ensure  => present,
  owner   => root,
  group   => root,
  mode    => '0644',
  content => template('rails.conf'),
  require => Package['nginx'],
  notify  => Service['nginx']
}

service { 'mysqld':
  ensure     => running,
  enable     => true,
  hasrestart => true
}

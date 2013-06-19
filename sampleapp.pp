$packages = [
  'autoconf',
  'automake',
  'binutils',
  'bison',
  'flex',
  'gcc',
  'gcc-c++',
  'gettext',
  'libtool',
  'make',
  'patch',
  'pkgconfig',
  'redhat-rpm-config',
  'rpm-build',
  'byacc',
  'cscope',
  'ctags',
  'diffstat',
  'doxygen',
  'elfutils',
  'gcc-gfortran',
  'git',
  'indent',
  'intltool',
  'patchutils',
  'rcs',
  'systemtap',
  'cmake',
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

service { 'mysqld':
  ensure     => running,
  enable     => true,
  hasrestart => true
}

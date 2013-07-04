class common::packages {
  $packages = [
    'git',
    'gcc',
    'gcc-c++',
    'make',
    'libselinux-ruby',
    'memcached',
  ]
  
  package { $packages:
    ensure => installed
  }
}

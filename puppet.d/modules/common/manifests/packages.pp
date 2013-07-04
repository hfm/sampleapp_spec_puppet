class common::packages {
  $packages = [
    'git',
    'zsh',
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

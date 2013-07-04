class common::packages {
  $packages = [
    'git',
    'gcc',
    'gcc-c++',
    'make',
    'libselinux-ruby',
  ]
  
  package { $packages:
    ensure => installed
  }
}

class common::packages {
  $packages = [
    'git',
    'gcc',
    'gcc-c++',
    'make',
    'openssl-devel',
    'libselinux-ruby',
  ]
  
  package { $packages:
    ensure => installed
  }
}

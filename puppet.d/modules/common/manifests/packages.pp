class common::packages {
  $packages = [
    'git',
    'gcc',
    'gcc-c++',
    'make',
    'openssl-devel',
    'libselinux-ruby',
    'nc',
  ]
  
  package { $packages:
    ensure => installed
  }
}

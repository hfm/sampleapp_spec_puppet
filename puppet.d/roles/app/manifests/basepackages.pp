class app::basepackages {
  $packages = [
    'git',
    'gcc',
    'gcc-c++',
    'make',
    'openssl-devel',
    'mysql-devel',
    'libselinux-ruby',
    'nc',
  ]
  
  package { $packages:
    ensure => installed
  }
}

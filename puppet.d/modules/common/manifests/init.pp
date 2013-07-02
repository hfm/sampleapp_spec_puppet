class common {

  $packages = [
    'git',
    'zsh',
    'gcc',
    'gcc-c++',
    'make',
    'libselinux-ruby',
  ]
  
  package { $packages:
    ensure => installed
  }
}

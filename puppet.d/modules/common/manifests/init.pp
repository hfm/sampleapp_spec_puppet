class common {

  $packages = [
    'git',
    'zsh',
    'gcc',
    'gcc-c++',
    'make',
    'monit',
    'libselinux-ruby',
  ]
  
  package { $packages:
    ensure => installed
  }
}

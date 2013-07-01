class common {

  $packages = [
    'git',
    'zsh',
    'gcc',
    'gcc-c++',
    'make',
  ]
  
  package { $packages:
    ensure => installed
  }
}

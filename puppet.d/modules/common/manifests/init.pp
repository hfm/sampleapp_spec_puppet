class common {

  $packages = [
    'git',
    'zsh',
    'gcc',
    'make',
  ]
  
  package { $packages:
    ensure => installed
  }
}

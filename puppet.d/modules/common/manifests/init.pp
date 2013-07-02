class common {

  $packages = [
    'git',
    'zsh',
    'gcc',
    'gcc-c++',
    'make',
    'monit',
  ]
  
  package { $packages:
    ensure => installed
  }
}

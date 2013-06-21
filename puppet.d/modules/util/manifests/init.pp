$packages = [
  'git',
  'zsh'
]

package { $packages:
  ensure => installed
}

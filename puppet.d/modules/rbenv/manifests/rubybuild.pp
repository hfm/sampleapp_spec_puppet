class rbenv::rubybuild {
  file { '/usr/local/rbenv/plugins':
    ensure => present,
    owner   => 'root',
    group   => 'appuser'
  }

  $install_path = '/usr/local/rbenv/plugins/ruby-build'
  exec { 'rbenv::install':
    command => 'git clone https://github.com/sstephenson/ruby-build.git $install_path',
    owner   => 'root',
    group   => 'appuser',
    creates => $install_path,
    path    => ['/bin', '/usr/bin'],
    timeout => 100
  }
}

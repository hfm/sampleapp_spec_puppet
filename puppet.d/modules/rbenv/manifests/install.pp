class rbenv::install {
  $install_path = '/usr/local/rbenv/'
  exec { 'rbenv::install':
    command => "git clone https://github.com/sstephenson/rbenv.git ${install_path}",
    user    => 'root',
    group   => 'appuser',
    creates => $install_path,
    path    => ['/usr/bin', '/usr/sbin'],
    timeout => 100,
    require => Package['git']
  }
}

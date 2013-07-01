class rbenv::install {
  $install_path = '/usr/local/rbenv'

  exec { 'rbenv::install':
    command => "git clone https://github.com/sstephenson/rbenv.git ${install_path}",
    user    => 'root',
    group   => 'appuser',
    creates => $install_path,
    path    => ['/bin', '/usr/bin'],
    timeout => 100
  }
  
  exec { 'rbenv::chmod':
    unless  => 'ls -l /usr/local | grep rbenv | cut -c-10 | grep drwxrwsr-x',
    command => 'chmod -R g+rwxXs ${install_path}',
    user    => 'root',
    group   => 'appuser',
    path    => ['/bin', '/usr/bin'],
    require => Exec['rbenv::install']
  }

  file { '/usr/local/rbenv/plugins':
    ensure  => directory,
    owner   => 'root',
    group   => 'appuser',
    require => Exec['rbenv::chmod']
  }
}

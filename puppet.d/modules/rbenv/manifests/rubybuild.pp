class rbenv::rubybuild {
  $install_path = '/usr/local/rbenv/plugins'
  exec { 'rubybuild::checkout':
    command => "git clone https://github.com/sstephenson/ruby-build.git ${install_path}/ruby-build",
    user    => 'root',
    group   => 'appuser',
    creates => '/usr/local/rbenv/plugins/ruby-build',
    path    => ['/bin', '/usr/bin'],
    timeout => 100
  }

  exec { 'rubybuild::pull':
    command => "git pull origin master",
    user    => 'root',
    group   => 'appuser',
    cwd     => '/usr/local/rbenv/plugins/ruby-build',
    path    => ['/bin', '/usr/bin'],
    require => Exec['rubybuild::checkout'],
    timeout => 100
  }

  exec { 'rubybuild::install':
    unless  => 'test -d /usr/local/share/ruby-build',
    command => 'sh install.sh',
    user    => 'root',
    group   => 'appuser',
    cwd     => '/usr/local/rbenv/plugins/ruby-build',
    path    => ['/bin', '/usr/bin'],
    require => Exec['rubybuild::pull'],
    timeout => 100
  }
}

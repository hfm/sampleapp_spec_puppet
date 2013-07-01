class ruby::rubybuild {
  $install_path = '/usr/local/ruby-build'

  exec { 'rubybuild::checkout':
    command => "git clone https://github.com/sstephenson/ruby-build.git ${install_path}",
    user    => 'root',
    group   => 'appuser',
    creates => $install_path,
    path    => ['/bin', '/usr/bin'],
    timeout => 0
  }

  exec { 'rubybuild::chmod':
    unless  => 'ls -l /usr/local | grep ruby-build | cut -c-10 | grep drwxrwsr-x',
    command => "chmod -R g+rwxs ${install_path}",
    user    => 'root',
    group   => 'appuser',
    cwd     => $install_path,
    path    => ['/bin', '/usr/bin'],
    require => Exec['rubybuild::checkout']
  }

  exec { 'rubybuild::config':
    unless  => 'test -e /usr/local/bin/ruby-build',
    command => "sh ${install_path}/install.sh",
    user    => 'root',
    group   => 'appuser',
    cwd     => $install_path,
    path    => ['/bin', '/usr/bin'],
    require => Exec['rubybuild::chmod']
  }

  exec { 'rubybuild::pull':
    command => "git pull origin master",
    user    => 'root',
    group   => 'appuser',
    cwd     => $install_path,
    path    => ['/bin', '/usr/bin'],
    require => Exec['rubybuild::config'],
    timeout => 0
  }
}

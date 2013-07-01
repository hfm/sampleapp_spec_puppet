class ruby::ruby200p247 {
  exec { 'ruby::install':
    unless      => 'test -d /usr/local/ruby-2.0.0-p247',
    command     => 'ruby-build 2.0.0-p247 /usr/local/ruby-2.0.0-p247',
    user        => 'root',
    group       => 'appuser',
    path        => ['/bin', '/usr/bin', '/usr/local/bin'],
    timeout     => 0
  }

  exec { 'ruby::bundler':
    unless      => 'test -e /usr/local/ruby-2.0.0-p247/bin/bundle',
    command     => '/usr/local/ruby-2.0.0-p247/bin/gem install bundler',
    user        => 'root',
    group       => 'appuser',
    path        => ['/bin', '/usr/bin', '/usr/local/bin'],
    timeout     => 100,
    require     => Exec['ruby::install']
  }
}

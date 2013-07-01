class rbenv::ruby200p247 {
  exec { 'rbenv::install200p247':
    unless      => 'test -d /home/okkun/.rbenv/versions/2.0.0-p247',
    command     => 'rbenv install -v 2.0.0-p247',
    user        => 'root',
    group       => 'appuser',
    path        => ['/bin', '/usr/bin', '/usr/local/bin'],
    timeout     => 3000
  }

  exec { 'rbenv::global200p247':
    unless      => 'cat /.rbenv/version | grep 2.0.0-p247',
    command     => 'rbenv global 2.0.0-p247',
    user        => 'root',
    group       => 'appuser',
    path        => ['/bin', '/usr/bin', '/usr/local/bin'],
    timeout     => 100,
    require     => Exec['rbenv::install200p247']
  }
}

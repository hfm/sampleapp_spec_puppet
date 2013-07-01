class rbenv::ruby200p247 {
  exec { 'rbenv::ruby200p247':
    unless  => 'test -d /usr/local/rbenv/versions/2.0.0-p247',
    command => 'rbenv install 2.0.0-p247;rbenv rehash;rbenv global 2.0.0-p247;',
    owner   => 'root',
    group   => 'appuser',
    environment => ['USER=root'],
    path    => ['/bin', '/usr/bin', '/usr/local/rbenv/bin'],
    timeout => 100
  }
}

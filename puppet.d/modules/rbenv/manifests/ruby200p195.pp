class rbenv::ruby200p195 {
  exec { 'rbenv::ruby200p195':
    unless  => 'test -d /usr/local/rbenv/versions/2.0.0-p195',
    command => 'rbenv install 2.0.0-p195;rbenv rehash;rbenv global 2.0.0-p195;',
    owner   => 'root',
    group   => 'appuser',
    path    => ['/bin', '/usr/bin'],
    timeout => 100
  }
}

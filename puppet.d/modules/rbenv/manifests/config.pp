class rbenv::config {
  $install_path = '/usr/local/rbenv/'
  exec { 'rbenv::config':
    unless  => "test -e /usr/local/bin/rbenv",
    command => "ln -fs ${install_path}/bin/rbenv /usr/local/bin/rbenv",
    user    => 'root',
    group   => 'appuser',
    path    => ['/bin', '/usr/bin']
  }
}

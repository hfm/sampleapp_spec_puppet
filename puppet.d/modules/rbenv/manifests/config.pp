class rbenv::config {
  $install_path = '/usr/local/rbenv/'
  exec { 'rbenv::config':
    command => "ln -s ${install_path}/bin/rbenv /usr/bin/rbenv",
    user    => 'root',
    group   => 'appuser',
    creates => $install_path,
    path    => ['/bin', '/usr/bin']
  }
}

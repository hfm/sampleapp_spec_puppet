class mysql::setup {
  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -p$mysql_password status',
    path    => ['/bin', '/usr/bin'],
    command => 'mysqladmin -uroot password $mysql_password',
    require => Service['mysqld']
  }
}

class mysql::setup {
  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -p$mysql_password status',
    path    => ['/bin', '/usr/bin'],
    command => 'mysqladmin -uroot password $mysql_password',
    require => Service['mysqld']
  }

  exec { "create-${name}-db":
    unless  => "mysql -u$::{user} -p$::{password} $::{name}",
    command => "mysql -uroot -p$::{mysql_password} -e
      \"CREATE DATABASE $::{name};
      GRANT ALL ON $::{name}.* TO $::{user}@localhost
      IDENTIFIED BY '$::{password}';\"",
    require => Service['mysqld']
  }
}

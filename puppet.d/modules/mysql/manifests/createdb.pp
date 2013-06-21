define mysql::createdb( $user, $password ) {
  exec { "create-${name}-db":
    unless  => "mysql -u${user} -p${password} ${name}",
    command => "mysql -uroot -p$::{mysql_password} -e
      \"CREATE DATABASE $::{name};
      GRANT ALL ON $::{name}.* TO ${user}@localhost
      IDENTIFIED BY '${password}';\"",
    require => Service['mysqld']
  }
}

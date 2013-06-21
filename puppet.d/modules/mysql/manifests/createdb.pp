define createdb( $user, $password ) {
  exec { "create-${name}-db":
    unless  => "mysql -u${user} -p${password} ${name}",
    command => "mysql -uroot -p${mysql_password} -e \"create database ${name}; grant all on ${name}.* to ${user}@localhost identified by '${password}';\"",
    require => Service['mysqld']
  }
}

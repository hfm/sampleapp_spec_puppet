class mysql::setup {
  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -p$mysql_password status',
    path    => ['/bin', '/usr/bin'],
    command => 'mysqladmin -uroot password $mysql_password',
    require => Service['mysqld']
  }

  $user = 'okkun'
  $password = 'hogehoge'
  $name = 'sampleapp'

  exec { "create-${name}-db":
    unless  => "mysql -uroot ${name}",
    command => "mysql -uroot -e \"create database ${name};\"",
    require => Service['mysqld']
  }

  exec { "grant-${name}-db":
    unless  => "mysql -u${user} -p${password} ${name}",
    command => "mysql -uroot -e
      \"GRANT ALL ON ${name}.* TO ${user}@localhost
      IDENTIFIED BY '${password}';\"",
    require => [Service['mysqld'], Exec["create-${name}-db"]]
  }
}

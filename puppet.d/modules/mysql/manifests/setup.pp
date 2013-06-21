class mysql::setup {
  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -p$mysql_password status',
    path    => ['/bin', '/usr/bin'],
    command => 'mysqladmin -uroot password $mysql_password',
    require => Service['mysqld']
  }

  $user = 'okkun'
  $password = 'hogehoge'
  $dbname = 'sampleapp'

  exec { "create-${dbname}-db":
    unless  => "mysql -uroot ${dbname}",
    command => "mysql -uroot -e \"create database ${dbname};\"",
    require => Service['mysqld']
  }

  exec { "grant-${dbname}-db":
    unless  => "mysql -u${user} -p${password} ${dbname}",
    command => "mysql -uroot -e
      \"GRANT ALL ON ${dbname}.* TO ${user}@localhost
      IDENTIFIED BY '${password}';\"",
    require => [Service['mysqld'], Exec["create-${dbname}-db"]]
  }
}

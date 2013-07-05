class mysql::setup {
  # 実際これは良くないけど、今回だけ
  $mysql_password = 'fugafuga'
  $user_name = 'okkun'
  $app_name = 'sampleapp'
  $app_password = 'hogehoge'

  exec { 'set-mysql-password':
    unless  => "mysqladmin -uroot -p${mysql_password} status",
    path    => ['/bin', '/usr/bin'],
    command => "mysqladmin -uroot password ${mysql_password}",
    require => Service['mysqld']
  }

  exec { "create-db":
    unless  => "mysql -uroot -p${mysql_password} -e \"SHOW DATABASES;\" | grep ${app_name}",
    path    => ['/bin', '/usr/bin'],
    command => "mysql -uroot -p${mysql_password} -e \"CREATE DATABASE ${app_name};\"",
    require => Exec['set-mysql-password']
  }

  exec { "create-user":
    unless  => "mysql -u${user_name} -p${app_password} ${app_name}",
    path    => ['/bin', '/usr/bin'],
    command => "mysql -uroot -p${mysql_password} -e \"GRANT ALL ON ${app_name}.* TO ${user_name}@localhost IDENTIFIED BY '${app_password}';\"",
    require => Exec["create-db"]
  }
}

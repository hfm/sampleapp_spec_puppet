class db::mysql::config {
  file { '/etc/my.cnf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('db/mysql/my.cnf'),
    notify  => Service['mysqld'],
    require => Package['mysql-server']
  }
}

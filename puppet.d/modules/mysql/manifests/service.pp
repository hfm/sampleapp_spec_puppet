class mysql::service {
  service { 'mysqld':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    require    => Package['mysql-server']
  }
}

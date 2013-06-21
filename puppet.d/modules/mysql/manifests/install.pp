class mysql::install {
  $packages = [
  'mysql',
  'mysql-server'
  ]

  package{ $packages:
    ensure  => installed
  }
}

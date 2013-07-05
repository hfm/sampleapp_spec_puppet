class mysql::install {
  $packages = [
  'mysql-devel',
  'mysql-server'
  ]

  package{ $packages:
    ensure  => installed
  }
}

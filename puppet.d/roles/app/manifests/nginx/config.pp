class app::nginx::config {
  $nginx_user = 'nginx'
  $server_port = 80
  $server_name = '_'
  $root_directory = '/var/www/rails/current/public'

  file { '/etc/nginx/nginx.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('app/nginx/nginx.conf.erb'),
    notify  => Service['nginx'],
    require => Package['nginx']
  }

  file { '/etc/nginx/conf.d/rails.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('app/nginx/rails.conf.erb'),
    notify  => Service['nginx'],
    require => Package['nginx']
  }
}

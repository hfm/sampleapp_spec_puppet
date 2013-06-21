class nginx::config {
  $nginx_user = 'nginx'
  $server_port = 80
  $server_name = '_'
  $root_directory = '/var/www/sample_app/public'

  file { '/etc/nginx/nginx.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('nginx/nginx.conf'),
    notify  => Service['nginx'],
    require => Package['nginx']
  }

  file { '/etc/nginx/conf.d/rails.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('nginx/rails.conf'),
    notify  => Service['nginx'],
    require => Package['nginx']
  }
}
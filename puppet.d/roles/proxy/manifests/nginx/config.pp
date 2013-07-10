class proxy::nginx::config {
  $nginx_user = 'nginx'
  $server_port = 80
  $server_name = '_'

  file { '/etc/nginx/nginx.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('proxy/nginx/nginx.conf.erb'),
    notify  => Service['nginx'],
    require => Package['nginx']
  }

  file { '/etc/nginx/conf.d/proxy.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('proxy/nginx/proxy.conf.erb'),
    notify  => Service['nginx'],
    require => Package['nginx']
  }
}

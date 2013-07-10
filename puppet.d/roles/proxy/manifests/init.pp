class proxy {
  include ::base
  include proxy::nginx

  Class['::base']
  -> Class['proxy::nginx']
}

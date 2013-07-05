class app {
  include app::nginx
  include app::memcached
  include app::monit
  include app::ruby

     Class['app::nginx']
  -> Class['app::memcached']
  -> Class['app::monit']
  -> Class['app::ruby']
}

class app {
  include app::user_group
  include ::common
  include app::nginx
  include app::memcached
  include app::monit
  include app::ruby
  include app::sampleapp

  Class['app::user_group']
  -> Class['::common']
  -> Class['app::nginx']
  -> Class['app::memcached']
  -> Class['app::monit']
  -> Class['app::ruby']
  -> Class['app::sampleapp']
}

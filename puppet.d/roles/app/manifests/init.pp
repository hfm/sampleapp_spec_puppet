class app {
  include app::user_group
  include app::base
  include app::nginx
  include app::monit
  include app::ruby
  include app::sampleapp

  Class['app::user_group']
  -> Class['app::base']
  -> Class['app::nginx']
  -> Class['app::monit']
  -> Class['app::ruby']
  -> Class['app::sampleapp']
}

class app {
  include ::base
  include app::basepackages
  include app::nginx
  include app::monit
  include app::ruby
  include app::sampleapp

  Class['::base']
  -> Class['app::basepackages']
  -> Class['app::nginx']
  -> Class['app::monit']
  -> Class['app::ruby']
  -> Class['app::sampleapp']
}

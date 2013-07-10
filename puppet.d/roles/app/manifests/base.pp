class app::base {
  include ::base
  include app::base::mysql

  Class['::base']
  -> Class['app::base::mysql']
}

class app::common {
  include ::common
  include app::common::mysql

  Class['::common']
  -> Class['app::common::mysql']
}

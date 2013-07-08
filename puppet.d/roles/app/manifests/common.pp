class app::common {
  include ::common
  include app::common::mysql

  Class['::common']
  -> include['app::common::mysql']
}

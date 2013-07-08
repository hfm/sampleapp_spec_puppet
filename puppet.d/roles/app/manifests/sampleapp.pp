class app::sampleapp {
  include app::sampleapp::app_dir
  include app::sampleapp::unicorn

  Class['app::sampleapp::app_dir']
  -> Class['app::sampleapp::unicorn']
}

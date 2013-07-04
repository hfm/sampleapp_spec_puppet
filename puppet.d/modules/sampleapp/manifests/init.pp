class sampleapp {
  include sampleapp::app_dir
  include sampleapp::unicorn

  Class['sampleapp::app_dir']
  -> Class['sampleapp::unicorn']
}

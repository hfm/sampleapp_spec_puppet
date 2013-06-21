class sampleapp {
  include sampleapp::app_dir
  include sampleapp::checkout

  Class['sampleapp::app_dir']
  -> Class['sampleapp::checkout']
}

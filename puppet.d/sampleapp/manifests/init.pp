class sampleapp {
  include sampleapp::app_dir
  include sampleapp::checkout
  include sampleapp::bundle

  Class['sampleapp::app_dir']
  -> Class['sampleapp::checkout']
  -> Class['sampleapp::bundle']
}

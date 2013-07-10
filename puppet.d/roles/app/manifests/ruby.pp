class app::ruby {
  include ::ruby::rubybuild
  include app::ruby::install
  
     Class['::ruby::rubybuild']
  -> Class['app::ruby::install']
}

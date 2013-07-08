class app::ruby {
  include ::ruby::rubybuild
  include app::ruby::ruby200p247
  
     Class['::ruby::rubybuild']
  -> Class['app::ruby::ruby200p247']
}

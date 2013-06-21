class rbenv {
  include rbenv::install
  include rbenv::config
  include rbenv::rubybuild
  include rbenv::ruby200p195

  Class['rbenv::install']
  -> Class['rbenv::config']
  -> Class['rbenv::rubybuild']
  -> Class['rbenv::ruby200p195']
}

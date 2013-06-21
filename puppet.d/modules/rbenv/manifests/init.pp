class rbenv {
  include rbenv::install

  Class['rbenv::install']
}

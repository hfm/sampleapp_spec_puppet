class rbenv {
  include rbenv::install
  #include rbenv::compile

  Class['rbenv::install']
  # -> Class['rbenv::compile']
}

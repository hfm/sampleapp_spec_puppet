class ruby {
  include ruby::rubybuild
  include ruby::ruby200p247

  Class['ruby::rubybuild']
  -> Class['ruby::ruby200p247']
}

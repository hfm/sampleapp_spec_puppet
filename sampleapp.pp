$packages = [
  'autoconf',
  'automake',
  'binutils',
  'bison',
  'flex',
  'gcc',
  'gcc-c++',
  'gettext',
  'libtool',
  'make',
  'patch',
  'pkgconfig',
  'redhat-rpm-config',
  'rpm-build',
  'byacc',
  'cscope',
  'ctags',
  'cvs',
  'diffstat',
  'doxygen',
  'elfutils',
  'gcc-gfortran',
  'git',
  'indent',
  'intltool',
  'patchutils',
  'rcs',
  'subversion',
  'swig',
  'systemtap',
  'cmake',
  'git',
  'zsh'
]

package { $packages:
  ensure => installed
}


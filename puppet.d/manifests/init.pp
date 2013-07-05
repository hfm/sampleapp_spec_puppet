include user_group
include common
include nginx
include mysql
include memcached
include ruby
include sampleapp
include monit

Class['user_group']
-> Class['common']
-> Class['nginx']
-> Class['mysql']
-> Class['memcached']
-> Class['ruby']
-> Class['sampleapp']
-> Class['monit']

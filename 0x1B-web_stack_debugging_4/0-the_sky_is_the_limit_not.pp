#manifest to fix Nginx open file limit configuration
exec { 'nginx fix':
  command => "sed -i s/'-n 15'/'-n 4096'/g /etc/default/nginx;  service nginx restart",
  path    => '/usr/local/bin/:usr/local/sbin/:/user/sbin/:/user/bin/:/sbin/:/bin/'
}

if platform?('centos')
  default['apache2']['package'] = 'httpd'
elsif platform?('ubuntu')
  default['apache2']['package'] = 'apache2'
end

#
# Cookbook:: apache2
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update' do
  action :update
end

package node['apache2']['package']

service node['apache2']['package'] do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  action :create
end

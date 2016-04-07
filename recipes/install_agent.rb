#
# Cookbook Name:: gocd-agent
# Recipe:: install_agent
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.override['gocd']['agent']['go_server_host'] = node['gocd-agent-linux']['server-host-name']
node.override['gocd']['agent']['package_file']['url'] = 'https://download.go.cd/binaries/16.2.1-3027/deb/go-agent-16.2.1-3027.deb'

include_recipe 'gocd::agent'

# Set the permissions so we can add folders and files here.
directory '/var/lib/go-agent/' do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

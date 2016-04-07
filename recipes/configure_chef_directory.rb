#
# Cookbook Name:: gocd-agent
# Recipe:: configure_chef_directory
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Construct the ".chef" directory.
directory '/var/lib/go-agent/.chef' do
  mode 0755
  owner 'root'
  group 'root'
  action :create
end

# Drop the necessary files into the .chef directory if they are missing.
cookbook_file '/var/lib/go-agent/.chef/knife.rb' do
  source 'knife.rb'
  action :create_if_missing
end

cookbook_file '/var/lib/go-agent/.chef/parliamentary-digital-service-validator.pem' do
  source 'parliamentary-digital-service-validator.pem'
  action :create_if_missing
end

cookbook_file '/var/lib/go-agent/.chef/devadasv.pem' do
  source 'devadasv.pem'
  action :create_if_missing
end

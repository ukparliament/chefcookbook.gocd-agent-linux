#
# Cookbook Name:: gocd-agent
# Recipe:: configure_docker
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Install Docker

docker_service 'default' do
  action [:create, :start]
end


cookbook_file "/tmp/configure_docker.sh" do
  source "configure_docker.sh"
  mode 0755
end

execute "configure docker" do
  command "sh /tmp/configure_docker.sh"
end

#
# Cookbook Name:: gocd-agent
# Recipe:: install_docker
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Install Docker
cookbook_file "/tmp/install_build_essential.sh" do
  source "install_build_essential.sh"
  mode 0755
end

execute "install build-essential package" do
  command "sh /tmp/install_build_essential.sh"
end

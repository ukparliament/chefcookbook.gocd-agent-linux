#
# Cookbook Name:: gocd-agent
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "#{cookbook_name}::install_agent"
include_recipe "#{cookbook_name}::install_software"
include_recipe "#{cookbook_name}::install_build_essential"
include_recipe "#{cookbook_name}::configure_docker"
#
# Cookbook Name:: gocd-agent
# Recipe:: install_chef_dev_kit
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Install the Chef Development Kit
include_recipe 'chef-dk'

# Install Git
include_recipe 'git'

# Install Packer
include_recipe 'sbp_packer'

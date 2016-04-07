#
# Cookbook Name:: gocd-agent
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'gocd-agent::default' do
  let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

  it 'includes the `install_agent` recipe' do
    expect(chef_run).to include_recipe('gocd-agent::install_agent')
  end

  it 'includes the `configure_chef_directory` recipe' do
    expect(chef_run).to include_recipe('gocd-agent::configure_chef_directory')
  end
  
  it 'includes the `install_chef_dev_kit` recipe' do
    expect(chef_run).to include_recipe('gocd-agent::install_chef_dev_kit')
  end

end

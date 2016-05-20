# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = 'ubuntu/trusty64'
  config.ssh.forward_agent = true

  # Berkshelf setup
  config.berkshelf.berksfile_path = 'Berksfile'
  config.berkshelf.enabled = true

  # Increase the memory
  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.provision :shell, inline: "curl -fsSL https://get.docker.com/ | sh"

  # Execute the cookbook
  config.vm.provision :chef_solo do |chef|
    # Temporary workaround for https://github.com/chef/chef/issues/4948
    # TODO remove this line when the next version of Vagrant (> 1.8.1) is released.
    chef.version = "12.10.40"

    chef.add_recipe 'gocd-agent-linux::default'
  end
end

# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box= "chef/centos-7.0"

  # gives a name to our box  	
  config.vm.define :centosvm do |t|
  end

  config.vm.provision :shell, path: "bootstrap.sh"

end

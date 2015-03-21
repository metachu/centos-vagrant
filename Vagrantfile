# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box= "puppetlabs/centos-7.0-64-puppet"

  # gives a name to our box  	

  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network "public_network"
  config.vm.network :forwarded_port, host: 8080, guest: 3000

end

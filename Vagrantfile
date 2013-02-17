# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "quantal32"
  config.vm.box_url = ("http://cloud-images.ubuntu.com/vagrant/quantal/current"
                       "/quantal-server-cloudimg-i386-vagrant-disk1.box")
  config.vm.network :hostonly, "192.168.33.10"
end

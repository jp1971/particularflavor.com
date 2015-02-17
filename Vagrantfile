# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "uvv_112514"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system. If you uncomment the line
  # below, make sure to change "/path/to" to the path to the Dropbox
  # on your local machine
  config.vm.box_url = "https://www.dropbox.com/s/xgybr1z9g3vq8ls/uvv_112514.box?dl=1"

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :private_network, ip: "192.168.18.65"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

end
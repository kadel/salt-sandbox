# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    config.vm.define "master" do |master|
        master.vm.box = "precise64"
        master.vm.network "private_network", ip: "192.168.50.100"

        master.vm.provision "shell" do |s|
            s.path = "bootstrap.sh"
            s.args = "master"
        end

    end

    config.vm.define "minion" do |minion|
        minion.vm.box = "precise64"
        minion.vm.network "private_network", ip: "192.168.50.101"

        minion.vm.provision "shell" do |s|
            s.path = "bootstrap.sh"
            s.args = "minion"
        end

    end
end

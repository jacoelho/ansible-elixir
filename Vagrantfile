# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "boxcutter/ubuntu1404"

  config.vm.provider :virtualbox do |v|
    v.check_guest_additions = false
    v.customize ["modifyvm", :id, "--cpus", 1, "--memory", 256]
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "tests/playbook.yml"
    ansible.verbose = "vvvv"
  end

  config.vm.provision :shell, :inline => <<-END
    curl -sL https://github.com/sstephenson/bats/archive/v0.4.0.tar.gz | tar xz
    /home/vagrant/bats-0.4.0/install.sh /usr/local
    /vagrant/tests/check.bats
  END
end

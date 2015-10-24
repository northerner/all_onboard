# vim: set ft=ruby :

Vagrant.configure('2') do |config|

  config.vm.box = 'chef/debian-7.8'

  config.vm.hostname = 'all-onboard'
  config.vm.network :private_network, ip: '192.168.69.98'

  config.vm.network :forwarded_port,
    guest: 22,
    host: 22222,
    host_ip: "127.0.0.1",
    id: "ssh",
    auto_correct: true

  config.vm.synced_folder '~', '/home/master'
  config.vm.synced_folder '.', '/home/vagrant/source'

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--cpus', '1', '--memory', 2048]
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'playbook.yml'
  end

end

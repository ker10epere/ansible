Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.hostname = "testserver"
  config.vm.network "forwarded_port",
    id: 'ssh', guest: 22, host: 2202, host_ip: "127.0.0.1", auto_correct: false
  config.vm.network "forwarded_port",
    id: 'http', guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port",
    id: 'https', guest: 443, host: 8443, host_ip: "127.0.0.1"
  # disable updating guest additions
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end
  config.vm.provider "virtualbox" do |virtualbox|
    virtualbox.name = "ch03"
  end
end
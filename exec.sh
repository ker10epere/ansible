ansible testserver -i inventory/vagrant.ini -m ping
ansible testserver -i inventory/vagrant.ini -m ping -vvvv

ansible testserver -m ping

ansible testserver -m command -a uptime
ansible testserver -m command -a whoami

ansible testserver -a uptime
ansible testserver -a "tail /var/log/dmesg"

ansible testserver -b -m package -a name=nginx

ansible testserver -b -m package -a "name=nginx update_cache=yes"
ansible testserver -b -m service -a "name=nginx state=restarted"

vagrant up
vagrant destroy -f

git config --global user.email "ker10epere@gmail.com"
git config --global user.name "Ker Tenepere"

git config --global credential.helper store

192.168.56.2

ssh -i '.vagrant/machines/default/virtualbox/private_key' vagrant@192.168.56.2

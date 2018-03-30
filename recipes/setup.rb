package 'tree' do
  action:install
end

package 'git'

package 'ntp' do
  action:install
end

node_ip = node['ipaddress']
#node['memory']['total']
puts "Ip address of the node is #{node_ip} "

#Simple overwrite

template 'etc/motd' do
  source 'motd.erb'
  action :create
end


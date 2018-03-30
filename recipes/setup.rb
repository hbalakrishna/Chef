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


file 'etc/motd' do
  content "This is the property of haxr
  HostName : #{node['hostname']}
  IPADDRESS: #{node_ip}
  CPU: #{node['cpu']['0']['mhz']}
  MEMPRY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
end


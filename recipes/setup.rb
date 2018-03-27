package 'tree' do
  action:install
end

package 'git'

package 'ntp' do
  action:install
end

file 'etc/motd' do
  content 'This is the property of haxr'
  owner 'root'
  group 'root'
end


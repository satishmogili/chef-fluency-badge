Hostname = node['hostname']
file '/etc/motd' do
        content "Hostname is this: #{Hostname}"
end 

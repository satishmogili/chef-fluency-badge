Hosname = node['hostnmae']
file '/etc/motd' do
        content "Hostname is this: #{Hostname}"
end 

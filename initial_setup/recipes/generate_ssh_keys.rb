Chef::Log::info("#{node[:deploy][:user]}")

if File.exist?("/home/#{node[:deploy][:user]}/.ssh/id_rsa.pub")
	Chef::Log::info('I see am')
else
	Chef::Log::info('I no see am')
end

bash 'extract_module' do
  user node[:deploy][:user]
  code <<-EOH
    ssh-keygen -t rsa -q -f ~/.ssh/id_rsa -P ""
    EOH
  not_if { ::File.exist?("/home/#{node[:deploy][:user]}/.ssh/id_rsa.pub") }
end




# file = File.open("~/.ssh/id_rsa.pub", "rb")
# contents = file.read

# Chef::Log::info("Public key is")
# Chef::Log::info(contents)

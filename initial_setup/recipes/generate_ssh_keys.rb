user = node[:deploy][:user]
private_key_path = "/home/#{node[:deploy][:user]}/.ssh/id_rsa"

bash 'generate ssh key pair' do
  user user
  code <<-EOH
    ssh-keygen -t rsa -q -f #{private_key_path} -P ""
    EOH
  not_if { ::File.exist?("#{private_key_path}") }
end

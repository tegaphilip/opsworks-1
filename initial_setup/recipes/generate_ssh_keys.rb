bash 'extract_module' do
  code <<-EOH
    ssh-keygen -t rsa -q -f ~/.ssh/id_rsa -P ""
    EOH
  not_if { ::File.exist?('~/.ssh/id_rsa.pub') }
end

# file = File.open("~/.ssh/id_rsa.pub", "rb")
# contents = file.read

# Chef::Log::info("Public key is")
# Chef::Log::info(contents)

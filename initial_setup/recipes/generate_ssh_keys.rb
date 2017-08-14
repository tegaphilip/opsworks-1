bash 'extract_module' do
  code <<-EOH
    ssh-keygen -t rsa
    EOH
  not_if { ::File.exist?('~/.ssh/id_rsa.pub') }
end

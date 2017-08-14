bash 'extract_module' do
  code <<-EOH
    ssh-keygen -t rsa -q -f ~/.ssh/id_rsa -P ""
    EOH
  not_if { ::File.exist?('~/.ssh/id_rsa.pub') }
end


# execute "generate ssh skys for #{username}." do
    # user username
    # creates "/home/#{username}/.ssh/id_rsa.pub"
    # command "ssh-keygen -t rsa -q -f /home/#{username}/.ssh/id_rsa -P \"\""
# end

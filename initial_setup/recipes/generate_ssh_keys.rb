# bash 'generate ssh keys' do
#   code <<-EOH
#     ssh-keygen -t rsa -q -f ~/.ssh/id_rsa -P ""
#     EOH
#   not_if { ::File.exist?('~/.ssh/id_rsa.pub') }
# end
execute "generate ssh key" do
    # user username
    # creates "/home/#{username}/.ssh/id_rsa.pub"
    command "ssh-keygen -t rsa -q -f ~/.ssh/id_rsa -P \"\""
    not_if { ::File.exist?('~/.ssh/id_rsa.pub') }
end

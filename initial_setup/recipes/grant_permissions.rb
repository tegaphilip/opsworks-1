username = node[:deploy][:user]

user "#{username}" do
  group 'sudo'
  action :modify
end

# execute 'yum-config-manager --quiet --enable epel && yum-config-manager --save --setopt=epel.skip_if_unavailable=true' do
#   not_if "yum-config-manager epel | grep 'enabled = True'"
# end

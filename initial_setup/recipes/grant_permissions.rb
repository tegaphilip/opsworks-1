username = node[:deploy][:user]

user "#{username}" do
  group 'sudo'
  action :update
end

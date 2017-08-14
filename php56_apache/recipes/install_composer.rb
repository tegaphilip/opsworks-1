user = node[:deploy][:user]
Chef::Log::info('User is ' + user)

script "install_composer" do
  interpreter "bash"
  user user
  # user "root"
  # cwd "#{deploy[:deploy_to]}/current"
  code <<-EOH
  curl -s https://getcomposer.org/installer | php
  mv composer.phar /usr/local/bin/composer
  EOH
end

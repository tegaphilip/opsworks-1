include_recipe 'dependencies::default'

node[:deploy].each do |application, deploy|

  opsworks_deploy_user do
    deploy_data deploy
  end

end

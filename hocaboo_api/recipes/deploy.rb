deploy '/var/www/html/hocaboo-api' do
  # repository 'https://github.com/tegaphilip/fdc.git'
  repository 'git@gitlab.com:hocaboo/api.git'
  revision 'hocaboolive'
  keep_releases 5
  migrate false
  ignore_failure false
  symlink_before_migrate ({})

  # before_migrate do
  #   Chef::Log::info("Current release path is " + release_path)
  #   %w{ /var/www/html/hocaboo-api/shared  /var/www/html/hocaboo-api/shared/config }.each do |dir|
  #     directory dir do
  #       mode '0755'
  #       action :create
  #     end
  #
  #     file '/var/www/html/hocaboo-api/shared/config/database.yml' do
  #       mode '0755'
  #       action :create
  #     end
  #   end
  #
  # end
  # user 'ubuntu'
  # deploy_to '/var/www/html/hocaboo-api'
  # ssh_wrapper '/tmp/private_code/wrap-ssh4git.sh'
  action :deploy
end

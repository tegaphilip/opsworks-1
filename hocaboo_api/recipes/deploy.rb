deploy 'code' do
  repo 'https://github.com/tegaphilip/opsworks-1.git'
  repository 'https://github.com/tegaphilip/opsworks-1.git'
  # revision node[:branch_name]
  keep_releases 5
  migrate false
  ignore_failure false
  symlink_before_migrate {}
  create_dirs_before_symlink   %w{tmp public config shared/config}
  # user 'ubuntu'
  deploy_to '/var/www/html/hocaboo-api'
  # ssh_wrapper '/tmp/private_code/wrap-ssh4git.sh'
  action :deploy
end

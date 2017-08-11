deploy 'code' do
  repo 'git@gitlab.com:hocaboo/api.git'
  repository 'git@gitlab.com:hocaboo/api.git'
  revision node[:branch_name]
  keep_releases 5
  migrate false
  ignore_failure false
  # user 'ubuntu'
  deploy_to '/var/www/html/hocaboo-api/'
  # ssh_wrapper '/tmp/private_code/wrap-ssh4git.sh'
  action :deploy
end

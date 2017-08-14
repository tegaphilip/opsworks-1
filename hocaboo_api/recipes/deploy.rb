deploy '/var/www/html/hocaboo-api' do
  #repo 'https://github.com/tegaphilip/opsworks-1.git'
  repository 'https://github.com/tegaphilip/fdc.git'
  revision 'master'
  keep_releases 5
  migrate false
  ignore_failure false
  #symlinks Hash.new
  # symlinks({})
  # symlink_before_migrate({})
  # symlink_before_migrate {"dbdump/peanorgn_peandb.sql" : "dbdump/peanorgn_peandb.sql" }
  symlink_before_migrate ({})
  # symlink_before_migrate symlink_before_migrate({})
  # Callback awesomeness:
  before_migrate do
    current_release = release_path
    %w{ /var/www/html/hocaboo-api/shared  /var/www/html/hocaboo-api/shared/config /var/www/html/hocaboo-api/shared/dbdump}.each do |dir|
      directory dir do
        # owner 'root'
        # group 'root'
        mode '0755'
        action :create
      end

      file '/var/www/html/hocaboo-api/shared/config/database.yml' do
        mode '0755'
        action :create
      end
    end

  end
  # user 'ubuntu'
  # deploy_to '/var/www/html/hocaboo-api'
  # ssh_wrapper '/tmp/private_code/wrap-ssh4git.sh'
  action :deploy
end

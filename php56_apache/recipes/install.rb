user = node[:deploy][:user]

apt_repository 'php56_repo' do
  uri 'ppa:ondrej/php'
  # components ['main', 'stable']
	action :add
end

apt_update 'Update the apt-cache' do
	#frequency 86_400
	#action :periodic
	action :update
end

package value_for_platform_family(:rhel => 'httpd', :debian => 'apache2') do
	Chef::Log.info("Installing apache2")
	action :install
end

packages = [
	'php5.6',
	'php5.6-mysql',
	'php5.6-gettext',
	'php5.6-mbstring',
	'php5.6-xdebug',
	'libapache2-mod-php5.6',
	'php5.6-curl',
	'php5.6-zip',
	'php5.6-dom',
	'php5.6-gd'
]

packages.each { |package_name|
	Chef::Log.info("Installing package : #{package_name}")
	package "#{package_name}" do
		action 'install'
	end
}

# Install mysql client for running cli tasks that uses mysql commands
include_recipe 'php56_apache::mysql_client'

# Remove server tokens from api responses
include_recipe 'php56_apache::disable_signatures'

# Install composer
include_recipe 'php56_apache::install_composer'

# Remove the added apt-cache repository
apt_repository 'php56_repo' do
  uri 'ppa:ondrej/php'
	action :remove
end

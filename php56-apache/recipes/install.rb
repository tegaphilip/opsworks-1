package value_for_platform_family(:rhel => 'httpd', :debian => 'apache2') do
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

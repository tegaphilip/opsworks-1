#install apache2


#case node[:platform]

package value_for_platform_family(:rhel => 'httpd', :debian => 'apache2') do
	action :install
end
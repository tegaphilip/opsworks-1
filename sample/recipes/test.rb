Chef::Log.info("Node is ===>")
Chef::Log.info(node)


node[:deploy].each do |app_name, deploy|
	Chef::Log.info("Node Deploy is ===>")
	Chef::Log.info(deploy)
	end


case node[:platform]
when "ubuntu","debian"
  package "docker.io" do
    action :install
  end
when 'centos','redhat','fedora','amazon'
  package "docker" do
    action :install
  end
end

service "docker" do
  action :start
end
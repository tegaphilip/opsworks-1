Chef::Log.info("Node is ===>")
Chef::Log.info(node)

Chef::Log.info("Node Deploy is ===>")
Chef::Log.info(node[:deploy])


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
apache2_dir = node[:apache2_dir]
conf_file = apache2_dir + File::SEPARATOR  + 'apache2.conf'

if File.exist?('/etc/apache2/apache2.conf')
	if File.readlines(conf_file).grep(/ServerSignature/).any?
		open(conf_file, 'a') do |f|
	  	f.puts "ServerSignature Off\n"
		end
	end

	if File.readlines(conf_file).grep(/ServerTokens/).any?
		open(conf_file, 'a') do |f|
	  	f << "ServerTokens Prod\n"
		end
	end
end

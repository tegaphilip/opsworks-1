if File.exist?('/etc/apache2/apache2.conf')
	Chef::log::info('Writing to apache2.conf file')
	open('/etc/apache2/apche2.conf', 'a') do |f|
  	f.puts "ServerSignature Off\n"
		f << "ServerTokens Prod\n"
	end
else
	Chef::log::info('apache2.conf file not found')
end

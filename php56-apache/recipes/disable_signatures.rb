if File.exist?('/etc/apache2/apche2.conf')
	open('/etc/apache2/apche2.conf', 'a') do |f|
  	f.puts "ServerSignature Off\n"
		f << "ServerTokens Prod\n"
	end
end

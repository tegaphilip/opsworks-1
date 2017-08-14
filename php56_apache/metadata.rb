name        "PHP-56-Apache"
description "Install Apache PHP and PHP packagea"
maintainer  "Tega Oghenekohwo"
license     "Apache 2.0"
version     "1.0.0"

depends 'initial_setup'

recipe "php56::install", "Installs Apache 2 on the server"
recipe "php56::start_webserver", "Start Apache if apache has not already started"

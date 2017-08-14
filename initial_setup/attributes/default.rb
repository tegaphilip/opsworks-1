default[:deploy]  = {}
default[:deploy][:user]  = 'devteam'

default[:apache2_dir] = '/etc/apache2'

include_attribute "initial_setup::customize"

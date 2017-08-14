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

default[:php56_apache][:packages] = packages
node.default['deploy']  = '{}'
node.default['deploy']['user']  = 'devteam'

include_attribute "php56_apache::customize"

###
# Do not use this file to override the deploy cookbook's default
# attributes.  Instead, please use the customize.rb attributes file,
# which will keep your adjustments separate from the AWS OpsWorks
# codebase and make it easier to upgrade.
#
# However, you should not edit customize.rb directly. Instead, create
# "ebs/attributes/customize.rb" in your cookbook repository and
# put the overrides in YOUR customize.rb file.
#
# Do NOT create an 'ebs/attributes/default.rb' in your cookbooks. Doing so
# would completely override this file and might cause upgrade issues.
#
# See also: http://docs.aws.amazon.com/opsworks/latest/userguide/customizing.html
###

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
	'php5.6-gd',
  'mysql-client'
  #'mysql-server' #needed for mysql client
]

default[:php56-apache][:packages] = packages

include_attribute "php56-apache::customize"

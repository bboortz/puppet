node default {
	include my-cron-puppet
	include my-packages
	include docker
}

node 'master' {
}

docker::image { 'base' }

#docker::image { 'ubuntu':
#	ensure => 'absent',
#}

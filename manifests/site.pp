node default {
	include my-cron-puppet
	include my-packages
	include my-docker
}

node 'master' {
}

#docker::image { 'centos': }

#docker::image { 'ubuntu':
#	ensure => 'absent',
#}

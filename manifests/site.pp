node default {
	include my-cron-puppet
	include my-packages
}

node 'master' {
}
docker::image { 'ubuntu':
	ensure => 'absent',
}

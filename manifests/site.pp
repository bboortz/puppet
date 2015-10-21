node default {
	include vw-cron-puppet
	include vw-packages
}

node 'master' {
}
docker::image { 'ubuntu':
	ensure => 'absent',
}

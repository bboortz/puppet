node default {
	include vw-cron-puppet
}

node 'master' {
}
docker::image { 'ubuntu':
	ensure => 'absent',
}

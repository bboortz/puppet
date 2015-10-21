node default {
	include cron-puppet
	include 'docker'
}
docker::image { 'ubuntu':
	ensure => 'absent',
}

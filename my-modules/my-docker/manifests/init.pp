class my-docker {
	include docker

	docker::image { 'centos_base': 
		docker_file => '/appl/docker/env/images/centos_base/Dockerfile'
	}

	docker::image { 'nodejs-appl':
		docker_file => '/appl/docker/env/images/nodejs-appl/Dockerfile'
	}
	docker::image { 'nodejs-rest':
		docker_file => '/appl/docker/env/images/nodejs-rest/Dockerfile'
	}

#	docker::run { 'nodejs-appl':
#		image => 'nodejs-appl',
#		use_name => true,
#		ports => ['8080:8080'],
#		restart_service => true,
#		privileged      => false,
#		pull_on_start   => false,
#	}

#	docker::run { 'nodejs-rest':
#		image => 'nodejs-rest',
#		use_name => true,
#		ports => ['8081:8080'],
#		restart_service => true,
#		privileged      => false,
#		pull_on_start   => false,
#	}
}

class my-docker {
	include docker

	docker::image { 'centos': }

	docker::image { 'nodejs':
		docker_file => '/appl/nodejs/nodejs-docker/Dockerfile'
	}

	docker::run { 'nodejs':
		image => 'nodejs',
		ports => ['8080', '8080'],
		expose => ['8080', '8080'],
		restart_service => true,
		privileged      => false,
		pull_on_start   => false,
	}
}

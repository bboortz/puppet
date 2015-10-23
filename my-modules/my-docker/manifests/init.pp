class my-docker {
	include docker

	docker::image { 'centos': }

	docker::image { 'nodejs-appl':
		docker_file => '/appl/docker/env/images/nodejs-appl'
	}

	docker::run { 'nodejs-appl':
		image => 'nodejs-appl',
		ports => ['8080:8080'],
		use_names => true,
		restart_service => true,
		privileged      => false,
		pull_on_start   => false,
	}
}

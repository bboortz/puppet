class my-docker {
	include docker

	docker::image { 'centos': }

	docker::image { 'nodejs':
		docker_file => '/appl/nodejs/nodejs-docker/Dockerfile'
	}
}

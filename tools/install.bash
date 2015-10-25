#!/bin/bash

. ${0%/*}/lib.bash


# *** function *** 
f_puppet_install() {
	echo "*** puppet install ***"
	$PKG_INST git puppet
	mv ${PUPPET_DIR} ${PUPPET_DIR}_orig
	cd ${PUPPET_DIR%/*}				# /etc
	git clone https://github.com/bboortz/puppet.git
	puppet module install garethr-docker
}

f_puppet_update() {
	echo "*** puppet update***"
	cd ${PUPPET_DIR}
	git pull 
}

f_docker_install() {
	echo "*** docker install ***"
	$PKG_INST git docker
	mkdir -p ${DOCKER_DIR%/*}			# /appl
	git clone https://github.com/bboortz/docker-base.git docker

}

f_docker_update() {
	echo "*** docker update ***"
	cd ${DOCKER_DIR}
	git pull
}


# *** docker ***
if [ ! -d ${DOCKER_DIR} ]; then
	f_docker_install
else 
	f_docker_update
fi


# *** puppet ***
if [ ! -d ${PUPPET_DIR} ]; then
	f_puppet_install
else 
	f_puppet_update
fi

# *** puppet apply ***
echo "*** puppet apply ***"
/etc/puppet/tools/apply.bash





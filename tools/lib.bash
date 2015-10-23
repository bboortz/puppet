set -e
set -u


# *** variables ***
PUPPET_DIR=/etc/puppet
DOCKER_DIR=/appl/docker


if [ $(which apt-get) ]; then 
	PKG_INST="apt-get install -y"
	PKG_RM="apt-get remove -y"
elif [ $(which yum) ]; then 
	PKG_INST="yum install -y"
	PKG_RM="yum remove -y"
else
	echo "ERROR: cannot recognize package manager!"
	exit 1
fi


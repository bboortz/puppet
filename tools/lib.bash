set -e
set -u

if [ $(which apt-get) ]; then 
	PKG_INST="apt-get install -y"
	PKG_RM="apt-get remove -y"
elif [ $(which yum) ]; then 
	PKG_INST="yum install -y"
	PKG_RM="yum remove -y"
else
	echo "ERROR: cannot recognize package manager!"
fi


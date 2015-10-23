#!/bin/bash

. ${0%/*}/lib.bash


# *** checks ***
if [ -d /etc/puppet ]; then
	echo "ERROR: puppet already installed!"
	exit 1
fi


# *** install ***
$PKG_INST puppet
mv /etc/puppet /etc/puppet_orig
cd /etc
git clone https://github.com/bboortz/puppet.git
puppet module install garethr-docker


# *** puppet apply ***
/etc/puppet/tools/apply.sh

#!/bin/bash

. ${0%/*}/lib.bash


# *** checks ***
if [ ! -d /etc/puppet ]; then
	echo "ERROR: puppet not installed!"
	exit 1
fi


# *** uninstall ***
$PKG_RM puppet


# *** remove directories ***
rm -rf /etc/puppet
rm -rf /etc/puppet_orig


#!/bin/bash

. ${0%/*}/lib.bash


# *** functions ***
f_puppet_uninstall() {
        echo "*** puppet uninstall ***"
	$PKG_RM puppet
        mv ${PUPPET_DIR} ${PUPPET_DIR}_$( date "+%s" )
}


# *** checks ***
if [ ! -d /etc/puppet ]; then
	echo "ERROR: puppet not installed!"
	exit 1
fi


# *** uninstall ***
f_puppet_uninstall



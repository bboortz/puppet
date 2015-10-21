#!/bin/bash
set -e
set -u

# *** variables ***
TOOLSDIR=$( readlink -f ${0%/*} )
BASEDIR=${TOOLSDIR%/*}


# *** applying changes ***
cd $BASEDIR 
git pull
puppet apply ${BASEDIR}/manifests/site.pp

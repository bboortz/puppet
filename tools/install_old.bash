#!/bin/bash
set -e
set -u

yum -y install git puppet
git checkout ...
puppet module install garethr-docker

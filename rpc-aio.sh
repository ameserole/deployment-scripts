#!/bin/bash

set -euo pipefail

apt-get update

apt-get install -y vim git tmux

git clone --recursive https://github.com/rcbops/rpc-openstack /opt/rpc-openstack

pushd /opt/rpc-openstack

	#git checkout liberty-12.2
	#git submodule update

	export DEPLOY_AIO="yes"

	./scripts/deploy.sh

popd
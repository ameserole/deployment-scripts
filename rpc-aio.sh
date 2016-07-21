#!/bin/bash

apt-get update

apt-get install -y vim git tmux

git clone --recursive https://github.com/rcbops/rpc-openstack /opt/rpc-openstack

pushd /opt/rpc-openstack

	export DEPLOY_AIO="yes"

	./scripts/deploy.sh

popd
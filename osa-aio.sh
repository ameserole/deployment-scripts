#!/bin/bash

set -euo pipefail

apt-get update

apt-get install -y vim git tmux

git clone https://github.com/openstack/openstack-ansible /opt/openstack-ansible

pushd /opt/openstack-ansible
	
	./scripts/gate-check-commit.sh

popd
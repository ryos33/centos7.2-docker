#!/bin/sh

docker_ver=${1:-latest}

yum -y remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine docker-ce docker-ce-cli
yum -y install yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast


if [ $docker_ver = "latest" ]; then
  yum -y install docker-ce docker-ce-cli
else
  yum -y install docker-ce-${docker_ver} docker-ce-cli-${docker_ver}
fi


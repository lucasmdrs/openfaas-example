#!/bin/sh

if ! [ -x "$(command -v docker)" ]; then
	echo 'Unable to find docker command, please install Docker (https://www.docker.com/) and retry' >&2
	exit 1
fi

echo "Configuring nodes"
for node in `docker node ls --format "{{ .Hostname }}"`; do 
	case $node in
		"node1")
			docker node update --label-add faas=faas $node
			;;
		"node2")
			docker node update --role manager --label-add faas=monitor $node
			;;
		"node3")
			docker node update --label-add faas=queue $node
			;;
		"node4")
			docker node update --label-add faas=functions $node
			;;
	esac
done
echo "Deploying stack"
docker stack deploy func --compose-file docker-compose.yml

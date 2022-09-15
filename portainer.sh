echo '----------Creating Docker Volume for portainer---------------'
docker volume create portainer_data
sleep 5

echo '----------Pulling portainer images---------------------------'
docker run --detach --name portainer --publish 9443:9443 --volume /var/run/docker.sock:/var/run/docker.sock --volume portainer_data:/data --restart=always portainer/portainer-ce:2.9.0-alpine
sleep 5

echo '----------Run portainer agent locally-------------------------'
docker run --detach  -p 9001:9001  --name portainer_agent  --restart=always  --volume /var/run/docker.sock:/var/run/docker.sock  --volume /var/lib/docker/volumes:/var/lib/docker/volumes  portainer/agent:2.9.0-alpine


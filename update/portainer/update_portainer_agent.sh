#! /bin/bash
echo Updating Portainer agent
sudo docker stop portainer_agent
sudo docker rm portainer_agent
sudo docker pull portainer/agent:latest
sudo docker run -d -p 9001:9001 --name portainer_agent --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker/volumes:/var/lib/docker/volumes portainer/agent:latest
echo Updated!

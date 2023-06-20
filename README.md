## Docker Swarm Deployment for openmerce web app

This is a simple docker swarm deployment for openmerce web app. It uses docker swarm to deploy the app in a cluster of 3 nodes.

### Prerequisites
- Docker, absolutely...
- Create all the required network and volumes (kindly scan the yml files for more info)
- Refer to docker swarm traefik's docs for more info about labelling and https certs https://dockerswarm.rocks/traefik/
- change user to root, I like to use `sudo -s` for this as sudo has env reset https://superuser.com/a/232258
- `./readenv.sh` to set the env variables
- `docker stack deploy -c something.yml something`
- You are good to go

### Notes
- We use internal service to resolve freight cost which is closed source, so you will need to replace it with your own service
- In doubt, refer to official docker swarm docs https://docs.docker.com/engine/swarm/
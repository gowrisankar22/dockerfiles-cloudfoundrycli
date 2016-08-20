#!/bin/bash

THROTTLE_SECONDS=60

TRIGGER_URL='https://registry.hub.docker.com/u/lwieske/cloudfoundrycli/trigger/0f60483e-40fe-4783-b656-db9ce9d3d1de/'

curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.07.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.08.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.09.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.10.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.11.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.12.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.13.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.14.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.15.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.16.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.17.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.18.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.19.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.20.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS
curl --header "Content-Type: application/json" --data '{"docker_tag": "v6.21.0"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS

curl --header "Content-Type: application/json" --data '{"docker_tag": "latest"}' --request POST $TRIGGER_URL ; sleep $THROTTLE_SECONDS

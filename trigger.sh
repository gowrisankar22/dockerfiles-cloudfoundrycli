#!/bin/sh

TRIGGER_URL=https://registry.hub.docker.com/u/lwieske/cloudfoundrycli/trigger/123456789012345678901234567890123456/

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.1.0"}' -X POST $TRIGGER_URL

#sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.2.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.3.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.4.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.5.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.6.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.7.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.8.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.9.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.10.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.11.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.12.0"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.12.1"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.12.2"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.12.3"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "v6.12.4"}' -X POST $TRIGGER_URL

sleep 200

curl -H "Content-Type: application/json" --data '{"docker_tag": "latest"}' -X POST $TRIGGER_URL

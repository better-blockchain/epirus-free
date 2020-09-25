


run-mac:
	NODE_ENDPOINT=http://host.docker.internal:8545; docker-compose -f ./docker-compose.yml up -d
	docker-compose -f ./docker-compose.yml ps
	# web ui:
	open http://localhost:16000


run-linux:
	NODE_ENDPOINT=http://172.16.239.1:8545; docker-compose -f ./docker-compose.yml up -d
	docker-compose -f ./docker-compose.yml ps


ls-net:
	docker network ls


stop:
	docker-compose -f ./docker-compose.yml up -d
	docker-compose -f ./docker-compose.yml ps


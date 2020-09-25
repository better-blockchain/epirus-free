


run-mac:
	NODE_ENDPOINT=http://host.docker.internal:8545 docker-compose -f ./docker-compose.yml up -d
	docker-compose -f ./docker-compose.yml ps
	# web ui:
	open http://localhost:16000


run-linux:
	NODE_ENDPOINT=http://172.16.239.1:8545 docker-compose -f ./docker-compose.yml up -d
	docker-compose -f ./docker-compose.yml ps


ls-net:
	docker network ls


stop:
	docker-compose -f ./docker-compose.yml up -d
	docker-compose -f ./docker-compose.yml ps


git-push:
	git push origin fix:fix

pull:
	docker pull nginx:latest
	docker pull web3labs/epirus-free-ingestion:latest
	docker pull web3labs/epirus-free-web:latest
	docker pull web3labs/epirus-free-api:latest
	docker pull mongo:latest


ps:
	docker-compose -f ./docker-compose.yml ps


log-api:
	docker-compose -f ./docker-compose.yml logs -t --follow api

log-ing:
	docker-compose -f ./docker-compose.yml logs -t --follow ingestion

log-web:
	docker-compose -f ./docker-compose.yml logs -t --follow web

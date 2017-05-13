default: start

restart: stop start

stop:
	docker-compose stop

down:
	docker-compose down

build:
	docker-compose build

start:
	docker-compose up -d

clear-saves:
	rm game-data/saves/*

#reset-all: down stop restart clear-saves build start

.PHONY: down build start clear-saves

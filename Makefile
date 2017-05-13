default: start

down:
	docker-compose down

build:
	docker-compose build

start:
	docker-compose up -d

clear-saves:
	rm game-data/saves/*

reset-all: down clear-saves build start

.PHONY: down build start clear-saves

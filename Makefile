.PHONY: install test start stop

APP_PATH:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

install:
		docker run --rm -v ${APP_PATH}:/api -w /api composer/composer:alpine install --prefer-dist --no-scripts --no-interaction --ignore-platform-reqs

test:
		docker-compose run --rm -w /api api-fpm sh -c 'cd /api && ./vendor/bin/phpunit'

start:
		docker-compose up -d

stop:
		docker-compose stop

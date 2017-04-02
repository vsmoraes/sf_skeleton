# Symfony API skeleton
A Symfony distribution optimized to raw APIs

## Requirements
This distribution comes with docker configurations for local environments. In order to use this feature you'll need:

  * [docker](https://docs.docker.com/engine/installation/)
  * [docker-compose](https://docs.docker.com/compose/install/)

## Installation
```
composer create-project vsmoraes/sf_skeleton -s dev
```

## Features

  * Clean symfony installation
  * Monolog, logstash and Kibana
  * New Relic pre-loaded
  * Docker local environment
  * Makefile to make your life a little easier

## Local environment
To start the local environment, run:
```
make start
```

This command will start all the containers (fpm, nginx and elk). To access the application for the first time, you'll need to add the following line to your `/etc/hosts` file:
```
127.0.0.1 api.dev
```

Don't worry, it's just mapping the host `api.dev` to your localhost IP address. Now you can access the application using the browser of your choice using the address: `http://api.dev`.

## Commands
Install dependencies:
```
make install
```

Start docker local environment:
```
make start
```

Stop docker local environment:
```
make stop
```

Run unit tests:
```
make test
```

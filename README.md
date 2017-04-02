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

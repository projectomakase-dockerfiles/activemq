# Apache ActiveMQ Docker Image #

This repository contains the Dockerfile for creating an Apache ActiveMQ instance running on Oracle Server JRE 8.

## Image

The image **extends** the `projectomakase/server-jre-8:latest` image and adds Apache ActiveMQ 5.11.1.

## Availability

The `Dockerfile` is available in the `master` branch and is built in the Docker HUB as `projectomakase/activemq:latest`.

### Usage ###

To boot in standalone mode

    docker run -d projectomakase/activemq

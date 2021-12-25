#!/bin/bash
# Run this once: docker buildx create --use --name build --node build --driver-opt network=host
docker buildx build --platform linux/arm/v7 -t sargezt/pihole-unbound:`cat VERSION` --push .
docker buildx build --platform linux/arm/v7 -t sargezt/pihole-unbound:latest --push .

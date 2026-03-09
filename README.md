# Docker_Test_Project

This is a useless mini project with the sole purpose of getting a better understanding of Docker and containerization.

Web-App with Python and Flask; Containerization (Docker Desktop)

## app.py

Small example application.

## requirements.txt

Necessary librarys.

## Dockerfile

How the Image(Unchangeble template, with all necessary commands, code, librarys, connections, etc.) should be build. Blueprint for isolated Docker Containers(Running instance of the image).

## .dockerignore 

Filters useless files out of the build-context.

## Build Image

docker build -t hello-docker .

    - Docker reads Dockerfile
    - uses python:3.11-slim as base
    - installs Flask
    - copys app.py
    - builds the image "hello-docker"

## Start container

docker run -d --name hello-flask -p 5000:5000 hello-docker

-> open in broser "http://localhost:5000"

## Dev container

Puts development environment in container, is unified on every machine.

    - press F1, then click "Dev Containers: Reopen in Container"

## Summerization

You've Dockerized something when your app starts reproducibly in a container with its runtime setup.

You use a Dev Container additionally when your editor setup and tooling also need to run in a container.

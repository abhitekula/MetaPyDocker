# MetaPy Docker

This repository contains the files necessary to create a docker image with appropriate dependencies to run the MetaPy toolkit.

## Quickstart
The metapy docker image is published to docker hub which avoids the need to build the image locally.

### Prerequisites
* Install docker https://docs.docker.com/get-docker/

To run metapy program using docker container run following:
```
docker run -v ${PWD}/:/app abhitekula/metapy relative_path_to_python_file
```

Example:
```
(base) abhi@Abhinavs-MBP MetapyDocker % docker run -v ${PWD}/:/app abhitekula/metapy example.py
I said that I can't believe that it only costs $19.95! I could only find it for more than $30 before.
[("can't", 'that', 'it'), ('it', 'onli', 'cost'), ('could', 'onli', 'find'), ('onli', 'find', 'it'), ('that', 'it', 'onli'), ('more', 'than', '30'), ('cost', '19.95', 'could'), ('onli', 'cost', '19.95'), ('for', 'more', 'than'), ('said', 'that', "can't"), ('find', 'it', 'for'), ('that', "can't", 'that'), ('it', 'for', 'more'), ('19.95', 'could', 'onli')]
```

## Building docker image locally
In source directory run ```docker build .```

## Adding additional python dependencies
Update the requirements.txt with the additional pypi dependencies and rebuild the docker image.

Ex: add scipy to requirements.txt to install scipy and its dependencies

## Resources
* Metapy - https://github.com/meta-toolkit/metapy
* Python 3.5 - docker base container https://hub.docker.com/_/python/tags?page=1&name=3.5
* https://docs.docker.com/language/python/build-images/
* DockerHub link to image https://hub.docker.com/repository/docker/abhitekula/metapy
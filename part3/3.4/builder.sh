#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: $0 <GitHub_repository> <DockerHub_repository>"
    exit 1
fi

GITHUB=$1
DOCKER=$2

GITHUB_REPO=$(basename $GITHUB)

git clone "https://github.com/$GITHUB"
cd $GITHUB_REPO

docker build -t $GITHUB_REPO .

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker tag $GITHUB_REPO $DOCKER
docker push $DOCKER

cd ..
rm -rf $GITHUB_REPO
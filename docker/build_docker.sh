#!/bin/bash

echo "Build the docker"

docker build . -t flex_dash_env:889

if [[ $? = 0 ]] ; then
echo "Pushing docker..."
docker tag flex_dash_env:889 pavandocker143/datta
docker push pavandocker143/datta
else
echo "Docker build failed"
fi

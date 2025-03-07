#!/bin/bash

docker build -t harbor.voidbox.io/loneexile/backend-demo:latest .
docker push harbor.voidbox.io/loneexile/backend-demo:latest

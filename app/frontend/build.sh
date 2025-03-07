#!/bin/bash

docker build -t harbor.voidbox.io/loneexile/frontend-demo:latest .
docker push harbor.voidbox.io/loneexile/frontend-demo:latest
# docker run -p 8081:80 --name frontend-demo harbor.voidbox.io/loneexile/frontend-demo:latest

#!/bin/bash

docker run -d -e S3_BUCKET_NAME=apinant-test-s3-1 -p 8082:8080 --name backend-demo harbor.voidbox.io/loneexile/backend-demo:latest
docker run -d -p 8081:80 --name frontend-demo harbor.voidbox.io/loneexile/frontend-demo:latest

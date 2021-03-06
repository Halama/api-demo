#!/bin/bash

docker login -e="." -u="$QUAY_USERNAME" -p="$QUAY_PASSWORD" quay.io
docker tag keboola/gmail-extractor quay.io/keboola/gmail-extractor:$TRAVIS_TAG
docker images
docker push quay.io/keboola/gmail-extractor:$TRAVIS_TAG
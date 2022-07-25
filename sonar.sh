#!/bin/bash -e

go test -coverprofile=coverage.out
docker container run --volume $(pwd):/usr/src --rm sonarsource/sonar-scanner-cli:4 sonar-scanner

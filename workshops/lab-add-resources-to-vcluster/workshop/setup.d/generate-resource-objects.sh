#!/bin/bash

mkdir ~/objects

ytt -f ~/templates/git-credentials-3.yaml \
    -v GIT_PROTOCOL=$GIT_PROTOCOL \
    -v GIT_HOST=$GIT_HOST \
    -v GIT_USERNAME=$GIT_USERNAME \
    -v GIT_PASSWORD=$GIT_PASSWORD \
    >~/objects/git-credentials-3.yaml

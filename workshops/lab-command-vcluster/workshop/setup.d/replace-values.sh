#!/bin/bash

set -e

envsubst < ~/exercises/values.yaml > ~/exercises/values.yaml.tmp && mv ~/exercises/values.yaml.tmp ~/exercises/values.yaml
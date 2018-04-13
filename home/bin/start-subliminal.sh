#!/bin/bash

cd /home/av/bin/pipenv3

pipenv run subliminal download -l en "$@"
pipenv run subliminal download -l es "$@"
pipenv run subliminal download -l pt-BR "$@"
pipenv run subliminal download -l fr "$@"
pipenv run subliminal download -l it "$@"

cd -

#!/bin/bash
set -ev
nohup pipenv run server > ./ci-build.log &
pipenv run python monitoring.py > ./ci-monitoring.log &
sleep(120)
exit 0

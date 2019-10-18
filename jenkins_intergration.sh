#!/bin/bash

export REPO_NAME='jenkins-intergration'
export JOB_NAME='jenkins-intergration'

if [[ $TEST_ERROR == 0 ]] ; then
  curl -XPOST \
    -H "Authorization: token $GH_TOKEN" \
    -H "Content-Type: application/json" \
    -d "{\"state\": \"success\", \"target_url\": \"https://81276af2.ngrok.io/job/$JOB_NAME/$BUILD_NUMBER/console\", \"description\": \"Jenkins CI.\", \"context\": \"Jenkins CI\"}" \
    https://api.github.com/repos/chariot9/$REPO_NAME/statuses/$(git rev-parse HEAD)
else
  curl -XPOST \
    -H "Authorization: token $GH_TOKEN" \
    -H "Content-Type: application/json" \
    -d "{\"state\": \"failure\", \"target_url\": \"https://81276af2.ngrok.io/job/$JOB_NAME/$BUILD_NUMBER/console\", \"description\": \"Jenkins CI.\", \"context\": \"Jenkins CI\"}" \
    https://api.github.com/repos/chariot9/$REPO_NAME/statuses/$(git rev-parse HEAD)
fi
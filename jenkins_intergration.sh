#!/bin/bash

export REPO_NAME='jenkins-intergration'
export JOB_NAME='jenkins-intergration'

if [ $TEST_ERROR -eq 0 ] ; then
  curl "https://api.github.com/repos/octocat/$REPO_NAME/statuses/$(git rev-parse HEAD)?access_token=$GH_TOKEN" \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{
      \"state\": \"success\",
      \"context\": \"jenkins/$REPO_NAME\",
      \"description\": \"Jenkins\",
      \"target_url\": \"https://81276af2.ngrok.io/job/$JOB_NAME/$BUILD_NUMBER/console\"
  }"
else
  curl "https://api.github.com/repos/octocat/$REPO_NAME/statuses/$(git rev-parse HEAD)?access_token=$GH_TOKEN" \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{
      \"state\": \"failure\",
      \"context\": \"jenkins/$REPO_NAME\",
      \"description\": \"Jenkins\",
      \"target_url\": \"https://81276af2.ngrok.io/job/$JOB_NAME/$BUILD_NUMBER/console\"
  }"
fi
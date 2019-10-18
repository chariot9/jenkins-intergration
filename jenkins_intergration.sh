#!/bin/sh

export REPO_NAME='jenkins-intergration'
export JOB_NAME='jenkins-intergration'

curl -X POST -H "Authorization: token $GH_TOKEN" https://api.github.com/repos/:owner/:repo/statuses/$(git rev-parse HEAD) -d "{ \
  \"state\": \"failure\", \
  \"context\": \"jenkins/$REPO_NAME\",
  \"target_url\": \"//https://81276af2.ngrok.io/job/$JOB_NAME/$BUILD_NUMBER/console\", \
  \"description\": \"The build has failed.\" \
}"
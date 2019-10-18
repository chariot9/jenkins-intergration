#!/bin/sh

export REPO_NAME='jenkins-intergration'
export JOB_NAME='jenkins-intergration'

curl -X POST -H "Authorization: token 8f7789285354639fafc8a4af599255e5c10b9d53" https://api.github.com/repos/:owner/:repo/statuses/$(git rev-parse HEAD) -d "{ \
  \"state\": \"failure\", \
  \"target_url\": \"//https://81276af2.ngrok.io/job/$JOB_NAME/$BUILD_NUMBER/console\", \
  \"description\": \"The build has failed.\" \
}"
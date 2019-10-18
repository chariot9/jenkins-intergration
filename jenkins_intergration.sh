#!/bin/sh

export REPO_NAME='jenkins-intergration'
export JOB_NAME='jenkins-intergration'

curl "http://api.github.com/repos/octocat/$REPO_NAME/statuses/$(git rev-parse HEAD)?access_token=8f7789285354639fafc8a4af599255e5c10b9d53" \
-H "Content-Type: application/json" \
-X POST \
-d "{
    \"state\": \"success\",
    \"context\": \"jenkins/$REPO_NAME\",
    \"description\": \"Jenkins\",
    \"target_url\": \"https://81276af2.ngrok.io/job/$JOB_NAME/$BUILD_NUMBER/console\"
}"
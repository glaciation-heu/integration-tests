#!/usr/bin/env bash

set -o errexit
set -o nounset

JOB=${1?"Please specify job id"}
USER=${2?"Please specify user"}
TOKEN=${3?"Please specify password"}
DESTINATION_FOLDER=${4?"Please specify target folder"}
JENKINS_HOST=${5?"Please specify environment, e.g jenkins.integration or jenkins.validation"}

curl -s "http://$USER:$TOKEN@$JENKINS_HOST/job/$JOB/config.xml" > "$DESTINATION_FOLDER/$JOB.config.xml"

echo "$JOB.config.xml is exported."
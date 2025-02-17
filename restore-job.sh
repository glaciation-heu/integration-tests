#!/usr/bin/env bash

set -o errexit
set -o nounset

JOB=${1?"Please specify job id"}
USER=${2?"Please specify user"}
TOKEN=${3?"Please specify token"}
DESTINATION_FOLDER=${4?"Please specify target folder"}
JENKINS_HOST=${5?"Please specify environment, e.g jenkins.integration or jenkins.validation"}

echo "http://$JENKINS_HOST/createItem?name=$JOB"

curl -X POST "http://$JENKINS_HOST/createItem?name=$JOB" \
	--header "Content-Type: application/xml" \
	--user "$USER:$TOKEN" \
	-d "@$DESTINATION_FOLDER/$JOB.config.xml"	

echo "$JOB.config.xml is imported."
#!/bin/sh

FILTER=$1

results=$(curl --silent -u ${JENKINS_USER_ID}:${JENKINS_API_TOKEN} "${JENKINS_URL}/job/${JOB_NAME}/descriptorByName/org.jenkinsci.plugins.configfiles.buildwrapper.ManagedFile/fillFileIdItems" | jq -r '.values[].name' | grep -v "please select")

if [ "${FILTER}" == "" ]; then
  echo "$results"
else
  echo "$results" | grep ${FILTER}
fi

#!/bin/bash

set -ex

if [ -z $ATTENDEE_SERVICE_URL_NEW ]; then
  echo "ATTENDEE_SERVICE_URL_NEW not set"
  exit 1
fi

pushd attendee-service-source
  echo "Running smoke tests for Attendee Service deployed at $ATTENDEE_SERVICE_URL_NEW”
  cf map-route articulate-blue pcfi1.fe.gopivotal.com -n attendee-service-goofy-intelligibleness
popd

exit 0

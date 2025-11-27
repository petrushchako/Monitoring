#!/usr/bin/env bash

DEVICE_ID="<D/I-User>-Mac"
API_TOKEN="<API-Token provided by the trainer>"
LOCATION="Walldorf"
OPEN_APPS="5"
INSTALLED_APPS="20"
TIME="$(date +%s)000"

curl -X POST "https://dev.eu10.apm.services.cloud.sap/e/09328838-b352-44a2-bf06-60a8e1824f39/api/v1/entity/infrastructure/custom/${DEVICE_ID}" \
-H "accept: application/json; charset=utf-8" -H "Authorization: Api-Token ${API_TOKEN}" \
-H "Content-Type: application/json; charset=utf-8" \
-d "{ \
       \"displayName\": \"${DEVICE_ID}\", \
       \"group\": \"${LOCATION}-Trainee\", \
       \"ipAddresses\": [ \
           \"10.0.0.1\" \
       ], \
       \"favicon\": \"https://cdn2.iconfinder.com/data/icons/social-icons-color/512/apple-32.png\",
       \"type\": \"Mac\", \
       \"series\": [ \
           { \
               \"timeseriesId\": \"custom:mac.applications.installed\", \
               \"dataPoints\": [ \
                   [ ${TIME}, ${INSTALLED_APPS} ] \
               ]\
           }, \
           { \
               \"timeseriesId\": \"custom:mac.applications.open\", \
               \"dataPoints\": [ \
                   [ ${TIME}, ${OPEN_APPS} ] \
               ]\
           } \
       ]\
    }"

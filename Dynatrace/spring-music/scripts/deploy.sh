#!/usr/bin/env bash

# replace the placeholders with actual values before running the script
export username=<D/I number>
export environmentid=<Environment ID>
export paasToken=<PaaS-Token>

export musicApp="spring-music-$username"
export dynatraceService="dynatrace-service-$username"
export hostname=dev.eu10.apm.services.cloud.sap

# The next step (building the app) commonly only needs to happen once.
# You can comment out the line for pure re-deployment.
./gradlew clean assemble

cf unbind-service $musicApp $dynatraceService
cf delete-service -f $dynatraceService
cf stop $musicApp

cf delete -f $musicApp
cf push

cf create-user-provided-service "$dynatraceService" -p '{"environmentid":"'$environmentid'","apitoken":"'$paasToken'","apiurl":"https://'$hostname'/e/'$environmentid'/api"}'
cf bind-service $musicApp $dynatraceService
cf restage $musicApp

#!/bin/bash

STACK_NAME="btg-node-api"
TEMPLATE_FILE="templates/node-api-stack.yml"
PARAMS_FILE="parameters/dev/node-params.json"

aws cloudformation deploy \
  --stack-name $STACK_NAME \
  --template-file $TEMPLATE_FILE \
  --parameter-overrides file://$PARAMS_FILE \
  --capabilities CAPABILITY_NAMED_IAM \
  --region us-east-1

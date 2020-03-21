#!/bin/bash

CHANGESET_OPTION="--no-execute-changeset"
 
if [ $# = 1 ] && [ $1 = "deploy" ]; then
  echo "deploy mode"
  CHANGESET_OPTION=""
fi

TEMPLATE_NAME=template.yaml
STACK_NAME=code-commit

aws cloudformation deploy --stack-name $STACK_NAME --template-file $TEMPLATE_NAME ${CHANGESET_OPTION} \
#   --parameter-overrides \
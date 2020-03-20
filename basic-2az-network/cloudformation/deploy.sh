#!/bin/bash

CHANGESET_OPTION="--no-execute-changeset"
 
if [ $# = 1 ] && [ $1 = "deploy" ]; then
  echo "deploy mode"
  CHANGESET_OPTION=""
fi

TEMPLATE_NAME=template.yaml
STACK_NAME=basic-2az-network

aws cloudformation deploy --stack-name $STACK_NAME --template-file $TEMPLATE_NAME ${CHANGESET_OPTION} \
#   --parameter-overrides \
#   ServiceName=basic-2az-network
#   VpcCIDR=10.0.0.0/16
#   AZ1=ap-northeast-1a
#   AZ2=ap-northeast-1c
#   PublicSubnet1CIDR=10.0.1.0/24
#   PublicSubnet2CIDR=10.0.101.0/24
#   PrivateSubnet1CIDR=10.0.2.0/24
#   PrivateSubnet2CIDR=10.0.102.0/24

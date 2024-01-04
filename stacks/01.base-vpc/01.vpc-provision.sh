#!/bin/sh

WORKSPACE_HOME=${WORKSPACE_HOME:-/workspace}
TEMPLATE_FILE="${WORKSPACE_HOME}/modules/templates/base-vpc/template.yml"

if [ ! -f "$TEMPLATE_FILE" ]; then
  echo "Template file $TEMPLATE_FILE not found"
  exit 1
fi

aws cloudformation deploy \
--template-file "$TEMPLATE_FILE" \
--stack-name "base-vpc-test-01" \
--parameter-overrides \
  "VpcCIDR=10.0.0.0/16" \
  "PrivateSubnetCIDR=10.0.0.0/24"

#!/bin/bash

DIR=$(dirname $0)
. ${DIR}/../env.vars

ROLE_NAME=${1}
ORG_NAME=${2:-"admin"}
SCOPE=${3:-"org"}

$DIR/get.sh $ROLE_NAME $ORG_NAME $SCOPE | jq -r .url
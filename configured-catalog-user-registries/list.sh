#!/bin/bash

DIR=$(dirname $0)
. ${DIR}/../env.vars

ORG_NAME=${1:-"IBM"}
CATALOG_NAME=${2:-"Test"}

${APIC_CLI} configured-catalog-user-registries:list -o ${ORG_NAME} -c ${CATALOG_NAME} -s ${APIMGR_SERVER}
#!/bin/bash

export CERTIFICATE_AUTHORITY_FILE=""
export MASTER_ENDPOINT=""
export CLUSTER_NAME=""
export DNS_CLUSTER_IP=""
export MAX_PODS=""
export INTERNAL_IP=""
export CLIENT_CA_FILE=""
export REGION=""

replacements='${CERTIFICATE_AUTHORITY_FILE},${MASTER_ENDPOINT},${CLUSTER_NAME},${DNS_CLUSTER_IP},${MAX_PODS},${INTERNAL_IP},${CLIENT_CA_FILE},${REGION}'
envsubst ${replacements} <"ignite.yaml" | fcct > userdata.json
#!/bin/bash

source ./variables

eksctl --region ${REGION} \
	create cluster --name buildonoss \
	--node-type c7g.2xlarge \
	--node-volume-size 100 \
	--nodes 2 \
	--zones ${REGION}a,${REGION}b,${REGION}c \
	--version 1.21


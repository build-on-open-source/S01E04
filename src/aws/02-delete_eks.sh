#!/bin/bash

source ./variables

eksctl delete cluster buildonoss --region ${REGION}

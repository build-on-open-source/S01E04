#!/bin/sh

kubectl apply -f 05-minor_version_upgrade.yaml

echo "\nNamespace buildonoss -> Database Operations -> upgrade-144-to-145 -> Watch the 'Operation Details'"

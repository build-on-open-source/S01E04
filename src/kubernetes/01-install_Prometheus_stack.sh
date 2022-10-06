#!/bin/sh

kubectl create namespace monitoring

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm install --namespace monitoring prometheus-operator --version 36.0.0 prometheus-community/kube-prometheus-stack

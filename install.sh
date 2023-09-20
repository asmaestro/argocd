#!/bin/bash

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

helm upgrade --install argocd argo/argo-cd \
  --create-namespace --namespace argocd \
  --values argo-bootstrap/argo-values.yaml \
  --version 5.46.6
  


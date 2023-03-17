#!/bin/bash

source ../shell_setup.sh

pe "cat pod-non-root.yaml"
echo ""
pe clear
echo ""
pe "kubectl apply -f pod-non-root.yaml"
echo ""
pe "kubectl get pods"
echo ""
pe "kubectl logs non-root"
echo ""
pe "clear"
kubectl get pods --no-headers | awk '{print $1}' | xargs kubectl delete pods &> /dev/null 

pe "cat init-container.yaml"
echo ""
pe "kubectl apply -f pod-non-root-init.yaml"
echo ""
pe "kubectl get pods"
echo ""
pe "kubectl logs non-root-init"
pe "clear"

kubectl get pods --no-headers | awk '{print $1}' | xargs kubectl delete pods --wait=false &> /dev/null

kubectl apply -f pod-cleanup.yaml &> /dev/null

sleep 30 &> /dev/null

kubectl get pods --no-headers | awk '{print $1}' | xargs kubectl delete pods --wait=false &> /dev/null
#!/bin/bash

source ../shell_setup.sh

pe "cat pod-non-root.yaml"
echo ""
pe "kubectl apply -f pod-non-root.yaml"
echo ""
pe "kubectl get pods"
echo ""
pe "kubectl logs non-root"
echo ""
pe "clear"

pe "cat pod-non-root-fsgroup.yaml"
echo ""
pe "kubectl apply -f pod-non-root-fsgroup.yaml"
echo ""
pe "kubectl get pods"
echo ""
pe "kubectl logs non-root-fsgroup"
echo ""
pe "clear"

pe "cat pod-non-root-init.yaml"
echo ""
pe "kubectl apply -f pod-non-root-init.yaml"
echo ""
pe "kubectl get pods"
echo ""
pe "kubectl logs non-root-init"
echo ""
pe "clear"
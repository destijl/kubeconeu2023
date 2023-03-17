#!/bin/bash

source ../shell_setup.sh

# capabilities added to non-root pod
pe "cat pod-non-root-caps.yaml"
echo ""
pe "clear"
echo ""
pe "kubectl apply -f pod-non-root-caps.yaml"
echo ""
echo ""
pe "kubectl get pods"
echo ""
echo ""
pe "kubectl logs pod-non-root-caps"
pe "clear"
kubectl get pods --no-headers | awk '{print $1}' | xargs kubectl delete pods &> /dev/null

# dockerfile
p "cat Dockerfile"
cat Dockerfile.nonroot
echo ""
echo ""
p "docker build -q -t gcr.io/vinaygo-gke-dev/coredns:filecaps ."
docker build -q -t gcr.io/vinaygo-gke-dev/coredns:filecaps -f Dockerfile.nonroot .
echo ""
echo ""
pe "docker push gcr.io/vinaygo-gke-dev/coredns:filecaps"
echo ""
echo ""
pe "clear"
pe "cat pod-non-root-filecaps.yaml"
echo ""
echo ""
pe "kubectl apply -f pod-non-root-filecaps.yaml"
echo ""
echo ""
pe "kubectl get pods"
cmd
kubectl get pods --no-headers | awk '{print $1}' | xargs kubectl delete pods --wait=false &> /dev/null






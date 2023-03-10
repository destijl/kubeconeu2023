#!/bin/bash

source ../shell_setup.sh

# root pod
pe "cat pod.yaml"
echo ""
echo ""
pe "kubectl apply -f pod.yaml"
echo ""
echo ""
pe "kubectl get pods"
pe "clear"

# non-root pod
pe "cat pod-non-root.yaml"
echo ""
echo ""
pe "kubectl apply -f pod-non-root.yaml"
echo ""
echo ""
pe "kubectl get pods"
echo ""
echo ""
pe "kubectl logs pod-non-root"
pe "clear"

# capabilities added to non-root pod
pe "cat pod-non-root-caps.yaml"
echo ""
echo ""
pe "kubectl apply -f pod-non-root-caps.yaml"
echo ""
echo ""
pe "kubectl get pods"
echo ""
echo ""
pe "kubectl logs pod-non-root-caps"
pe "clear"

# dockerfile
p "cat Dockerfile"
cat Dockerfile.nonroot
echo ""
echo ""
p "docker build -q -t gcr.io/vinaygo-gke-dev/simpleserver:v2.0.0 ."
docker build -q -t gcr.io/vinaygo-gke-dev/simpleserver:v2.0.0 -f Dockerfile.nonroot .
echo ""
echo ""
pe "docker push gcr.io/vinaygo-gke-dev/simpleserver:v2.0.0"
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






#!/bin/bash
# Kubernetes Pod Restarter
kubectl get pods --no-headers | grep "Error" | awk '{print $1}' | xargs kubectl delete pod
echo "Restarted failed pods."

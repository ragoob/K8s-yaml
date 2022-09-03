#! /bin/sh

kubectl create deployment nginx-imperative --image=nginx:latest
kubectl scale deployment/nginx-imperative --replicas 3
kubectl annotate deployment/nginx-imperative envrionment=prod
kubectl annotate deployment/nginx-imperative organization=sales

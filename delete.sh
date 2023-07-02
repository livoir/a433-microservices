#! /bin/sh

kubectl delete namespace karsajobs
kubectl delete pv --all -n karsajobs
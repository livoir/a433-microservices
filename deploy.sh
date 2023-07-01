#! /bin/sh

kubectl apply -f ./kubernetes/namespace.yml \
-f ./kubernetes/mongodb/mongo-configmap.yml \
-f ./kubernetes/mongodb/mongo-pv-pvc.yml \
-f ./kubernetes/mongodb/mongo-secret.yml \
-f ./kubernetes/mongodb/mongo-service.yml \
-f ./kubernetes/mongodb/mongo-statefulset.yml \
-f ./kubernetes/backend/karsajobs-service.yml \
-f ./kubernetes/backend/karsajobs-deployment.yml \
-f ./kubernetes/frontend/karsajobs-ui-service.yml \
-f ./kubernetes/frontend/karsajobs-ui-deployment.yml -n karsajobs
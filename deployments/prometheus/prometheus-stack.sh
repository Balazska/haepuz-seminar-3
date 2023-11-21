#!/bin/bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install -f values.yaml prometheus prometheus-community/kube-prometheus-stack
# forward port to localhost
#kubectl port-forward service/prometheus-grafana 30001:80

# expose to nodeport
#kubectl patch svc prometheus-grafana --type='json' -p '[{"op":"replace","path":"/spec/type","value":"NodePort"},{"op":"replace","path":"/spec/ports/0/nodePort","value":30001}]'
#kubectl patch svc prometheus-kube-prometheus-prometheus --type='json' -p '[{"op":"replace","path":"/spec/type","value":"NodePort"},{"op":"replace","path":"/spec/ports/0/nodePort","value":30002}]'

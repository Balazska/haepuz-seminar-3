sudo ufw allow 30002
kubectl port-forward svc/grafana -n monitoring --address 0.0.0.0 30002:80

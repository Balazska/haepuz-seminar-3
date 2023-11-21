#!/bin/bash

#minikube start --extra-config=kubelet.housekeeping-interval=10s
minikube start --memory=4096m --cpus=2 --driver=podman --extra-config=kubelet.housekeeping-interval=10s
minikube addons enable metrics-server

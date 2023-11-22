#kubectl create -f https://raw.githubusercontent.com/verfio/fortio-operator/master/deploy/fortio.yaml

echo "start sending requests"
kubectl run -i --tty load-generator --rm --image=docker.io/fortio/fortio --restart=Never -- load -qps 1000 -t 300s -c 10 http://seminar-3-webserver:8080

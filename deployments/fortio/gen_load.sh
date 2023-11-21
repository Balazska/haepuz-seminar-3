#kubectl create -f https://raw.githubusercontent.com/verfio/fortio-operator/master/deploy/fortio.yaml

kubectl run -i --tty load-generator --rm --image=docker.io/fortio/fortio --restart=Never -- load -qps 100 -t 30s -c 10 http://seminar-3-webserver:8080 
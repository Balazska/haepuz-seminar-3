#sudo iptables -t nat -A PREROUTING -p tcp --dport 30001 -j DNAT --to-destination 10.108.218.96:8080
#sudo iptables -t nat -A POSTROUTING -j MASQUERADE
#kubectl port-forward svc/seminar-3-webserver 30001:8080
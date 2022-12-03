<h3>INSTALLATION GUIDE</h3>

general architecture example ```gamestore.html```

<h5>REQUIREMENTS:</h5>

1. minikube
2. helm
3. docker

<h5>Installation</h5>

```
cd Infrastructure
docker compose up
minikube start
minikube addons enable ingress
helm install helm ./helm
minikube tunnel
curl http://localhost/api/v1/products/detailed/0
```
docker buildx build --platform linux/amd64 -t lolwww/test:1.3 .
docker push lolwww/test:1.3
kubectl apply -f ./k8s
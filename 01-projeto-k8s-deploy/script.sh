#!/bin/bash

echo "Criando as imagens...."

docker build -t brennocm/projeto-backend:1.0 backend/.
docker build -t brennocm/projeto-database:1.0 database/.

echo "Realizando push das imagens para o Docker Hub"

docker push brennocm/projeto-backend:1.0
docker push brennocm/projeto-database:1.0

echo "Criando serviços no Cluster K8s"

kubectl apply -f ../services.yml

echo "Criando os deployments...."

kubectl apply -f ../deployment.yml
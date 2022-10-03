echo "Criando as imagens...."

docker build -t brennocm/projeto-backend:1.0 backend/.
docker build -t brennocm/projeto-database:1.0 database/.

echo "Realizando push das imagens para o Docker Hub"

docker push brennocm/projeto-backend:1.0
docker push brennocm/projeto-database:1.0
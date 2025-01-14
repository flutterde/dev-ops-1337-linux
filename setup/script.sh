#!/usr/bin/bash

set -e # Exit on error

echo "-------------------------------------- UPDATE & UPGRADE -----------------------------------------"
apt update && apt upgrade -y

echo "-------------------------------------- INSTALLING PACKAGES --------------------------------------"
apt install make git wget -y

echo "-------------------------------------- INSTALLING DOCKER ----------------------------------------"
wget -qO- https://get.docker.com/ | sh # Install Docker,  -qO- is quiet and output to stdout


echo "-------------------------------------- INSTALLING DOCKER-COMPOSE --------------------------------"

echo "-------------------------------------- PREPER FILES FOR BUIDLD DOCKER IMAGE ---------------------"

cat << EOF > Dockerfile
FROM nginx:1.17.1-alpine

RUN rm  /usr/share/nginx/html/index.html

COPY index.html /usr/share/nginx/html/index.html

CMD [ "nginx", "-g", "daemon off;" ]

EOF

cat << EOF > index.html
<!DOCTYPE html>
<html>
<body>

    <center>
        <h1>Welcome to 1337 devOps</h1>
    </center>
</body>
</html>
EOF

echo "-------------------------------------- BUILDING DOCKER IMAGE ------------------------------------"
docker build -t mynginx:latest .

echo "-------------------------------------- RUNNING DOCKER CONTAINER ---------------------------------"

docker run -d -p 80:80 mynginx:latest

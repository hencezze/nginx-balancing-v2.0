#!/bin/bash
cd image
sudo docker build -t localhost:5000/srv.js .
sudo docker run -d -p 5000:5000 --name registry registry:2
sudo docker push localhost:5000/srv.js
sudo docker image rm localhost:5000/srv.js
echo "Server image was built"
echo 'Starting compose containers'
cd ..
sudo docker-compose up -d --build

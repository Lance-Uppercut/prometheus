docker build -t prometheus/cluster-local .
docker rm prometheus-rpi --force
docker run -p 9090:9090 --restart=always --name prometheus-rpi -d prometheus/cluster-local

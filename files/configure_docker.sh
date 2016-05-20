# ====== Configure Docker user ====== #

sudo groupadd docker
sudo usermod -G docker go
sudo service docker restart

echo "Done."

# ====== Install Docker Compose ====== #

curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
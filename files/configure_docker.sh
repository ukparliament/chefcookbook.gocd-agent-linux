sudo groupadd docker
sudo useradd -G docker go
sudo service docker restart

echo "Done."
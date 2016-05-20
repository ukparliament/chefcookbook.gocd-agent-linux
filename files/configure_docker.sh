sudo groupadd docker
sudo usermod -G docker go
sudo service docker restart

echo "Done."
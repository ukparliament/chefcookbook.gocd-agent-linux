sudo groupadd docker
sudo gpasswd -a go docker
sudo service docker restart

echo "Done."
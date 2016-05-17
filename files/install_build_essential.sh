
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe"
sudo apt-get update
sudo apt-get install build-essential

echo "Completed installing the build-essential package."
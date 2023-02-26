sudo apt-get update
sudo apt install -y \
    libseccomp2 \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo "Download script..."
curl -fsSL https://get.docker.com -o get-docker.sh

echo "Start installation..."
sudo sh get-docker.sh > /dev/null 2>&1

echo "Enable docker & containerd services..."
sudo systemctl enable docker.service > /dev/null 2>&1
sudo systemctl enable containerd.service > /dev/null 2>&1

echo "Complete!"
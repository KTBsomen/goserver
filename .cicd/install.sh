#!/bin/bash
# Prompt for sudo password
echo "Enter your sudo password to proceed: "
read -s SUDO_PASSWORD

# Define Golang version
GO_VERSION="1.21.1"  # Change this to the version you need

# Check if /usr/local/go exists
if [ -d "/usr/local/go" ]; then
    echo "Go is already installed in /usr/local/go. Exiting."
    exit 0
fi

# Download and install Go
echo "Downloading Go $GO_VERSION..."
wget "https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz"

echo "Installing Go..."
sudo tar -C /usr/local -xzf "go$GO_VERSION.linux-amd64.tar.gz"

# Set up Go environment variables
echo "Setting up Go environment variables..."

echo "Setting up Go environment variables..."
echo "GOROOT=/usr/local/go" | sudo tee -a /etc/environment > /dev/null
echo "PATH=$PATH:/usr/local/go/bin" | sudo tee -a /etc/environment > /dev/null


# Verify Go installation
echo "Verifying Go installation..."
go version

# Clean up
rm "go$GO_VERSION.linux-amd64.tar.gz"

echo "Go installation complete."
#22

#!/bin/bash
# Prompt for sudo password
echo "Enter your sudo password to proceed: "
read -s SUDO_PASSWORD

# Define Golang version
GO_VERSION="1.21.1"  # Change this to the version you need

# Download and install Go
echo "Downloading Go $GO_VERSION..."
wget "https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz"

echo "Removing existing Go installation..."
sudo rm -rf /usr/local/go

echo "Installing Go..."
sudo tar -C /usr/local -xzf "go$GO_VERSION.linux-amd64.tar.gz"

# Set up Go environment variables
echo "Setting up Go environment variables..."
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
source ~/.bashrc

# Verify Go installation
echo "Verifying Go installation..."
go version

# Clean up
rm "go$GO_VERSION.linux-amd64.tar.gz"

echo "Go installation complete."

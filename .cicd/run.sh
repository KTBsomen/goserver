#!/bin/bash

# Kill any process running on port 8080
echo "Stopping any existing process on port 8080..."
lsof -t -i:8080 | xargs -r kill -9  # More reliable way to kill the process
echo "Stopped any existing process on port 8080..."


# Ensure Go mod is initialized and tidy
if [ ! -f "go.mod" ]; then
    echo "Initializing Go module..."
    /usr/local/go/bin/go mod init hello-world
fi

echo "Tidying Go modules..."
/usr/local/go/bin/go mod tidy

# Build and run the Go server
echo "Building and starting the Go server..."
#/usr/local/go/bin/go build -o myapp main.go  # Optional: Build for faster execution
/usr/local/go/bin/go run main.go

# Alternatively, if you want to run it directly, use:
# /usr/local/go/bin/go run main.go
echo "running from run.sh"
echo "Go server started successfully."

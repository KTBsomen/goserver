#!/bin/bash
# Kill any process running on port 8080
lsof -i:8080 | awk 'NR!=1 {print $2}' | xargs -r kill -9
/usr/local/go/bin/go mod init hello-world
/usr/local/go/bin/go mod tidy
/usr/local/go/bin/go run main.go 

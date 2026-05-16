package main

import (
    "fmt"
    "net/http"
)

func helloWorldHandler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, " lets check redeploy1") 
    
    
}

func main() {
    http.HandleFunc("/", helloWorldHandler)
    fmt.Println("Server is listening on port 8080...")
    fmt.Println("running output from codeside")
    if err := http.ListenAndServe(":8080", nil); err != nil {
        fmt.Println("Error starting server:", err)
    }
}

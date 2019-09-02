package main

import (
	"fmt"
	"net/http"

	log "github.com/sirupsen/logrus"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello world")
	log.Infof("uri: %s", r.RequestURI)
}

func main() {
	http.HandleFunc("/", handler)
	log.Infof("server running on port %d", 8080)
	log.Fatal(http.ListenAndServe(":8080", nil))
}

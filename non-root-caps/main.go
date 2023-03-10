package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
)

var port = flag.String("port", "80", "port to listen on")

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello World!")
	})

	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%s", *port), nil))
}

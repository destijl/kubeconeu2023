FROM golang:1.20
COPY main.go ./
RUN go build -o server ./main.go
RUN pwd
RUN ls -la ./

FROM ubuntu
RUN apt-get update && apt-get install -y libcap2-bin

COPY --from=0 /go/server ./
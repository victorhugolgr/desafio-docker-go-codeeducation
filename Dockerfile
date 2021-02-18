FROM golang:1.14

WORKDIR /app
COPY main.go .

ENTRYPOINT go run main.go
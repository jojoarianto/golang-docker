FROM golang:1.11-alpine3.9

ENV GO111MODULE=on
WORKDIR /app

COPY go.mod .

COPY . .

# build script
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build main.go

EXPOSE 8080
CMD [ "./main" ]

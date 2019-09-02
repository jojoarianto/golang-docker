FROM golang:1.12

ENV GO111MODULE=on
WORKDIR /app

# check apakah ada perubahan dependencies
COPY go.mod .
COPY go.sum .

# jika tidak ada perubahan dependencies maka akan load from docker cache
RUN go mod download

COPY . .

# build binary script
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build main.go

EXPOSE 8080
CMD [ "./main" ]

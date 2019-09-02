# build stage
FROM golang:1.12 as builder

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

# background why multiple stage (build and final)
# To run our server we only need a binary file, 
# so on image we dont need golang 

# final stage
FROM scratch

COPY --from=builder /app/main /app/
WORKDIR /app

EXPOSE 8080
CMD [ "./main" ]

FROM alpine:3.15 as root-certs
RUN addgroup -g 1001 application
RUN adduser app -u 1001 -D -G application /home/application

FROM golang:1.19 as builder
WORKDIR /app
COPY . .
RUN go build main.go

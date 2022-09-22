FROM alpine:3.15 as os
RUN addgroup -g 1001 application
RUN adduser app -u 1001 -D -G application /home/application

FROM golang:1.19 as builder
WORKDIR /app
COPY . .
RUN go build main.go
RUN ls -la

FROM scratch as final
COPY --from=os /etc/passwd /etc/passwd
COPY --from=os /etc/group /etc/group
COPY --chown=1001:1001 --from=builder /app/main /main
USER app
ENTRYPOINT [ "/app/main" ]
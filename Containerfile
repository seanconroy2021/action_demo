
FROM golang:1.17.0-alpine3.13

WORKDIR /go/src/app
ADD hello-ec.go /go/src/app

RUN go build hello-ec.go

FROM alpine:3.18

COPY --from=0 "/go/src/app/hello-ec" hello-ec

ENTRYPOINT ./hello-ec
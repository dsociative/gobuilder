FROM golang:1.9-alpine

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN go get -u github.com/alecthomas/gometalinter github.com/axw/gocov/gocov gopkg.in/matm/v1/gocov-html  github.com/Masterminds/glide

RUN /go/bin/gometalinter --install

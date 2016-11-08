FROM golang:1.7.3

RUN go get -u github.com/alecthomas/gometalinter
RUN /go/bin/gometalinter --install

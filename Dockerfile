FROM golang:1.9

RUN go get -u github.com/alecthomas/gometalinter github.com/axw/gocov/gocov gopkg.in/matm/v1/gocov-html  github.com/Masterminds/glide
RUN /go/bin/gometalinter --install

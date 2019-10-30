FROM golang:alpine AS base_go

RUN mkdir -p /go/work/src
WORKDIR /go/work/src
ADD ./hello.go /go/work/src

RUN go build hello.go

FROM alpine
RUN mkdir -p /go/work/src
WORKDIR /go/work/src
COPY --from=base_go /go/work/src/hello .
ENTRYPOINT [ "/bin/sh" ]

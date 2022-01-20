FROM golang:1.17 as build
WORKDIR /go/src/ankieta
COPY ./src/ .
RUN go build -o /go/bin/ankieta main.go

FROM alpine
WORKDIR /usr/bin
COPY --from=build /go/bin/ .
COPY --from=build /usr/lib /usr/lib
CMD ["ankieta"]

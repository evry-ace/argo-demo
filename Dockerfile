FROM golang

WORKDIR /src
COPY . /src
RUN go build -o main cmd/main.go

FROM gcr.io/distroless/static

COPY main /main

CMD ["/main"]

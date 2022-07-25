FROM golang:alpine3.16 as builder
WORKDIR /app
COPY . .
RUN go build -o /app sum.go
FROM scratch
COPY --from=builder /app/sum /app
CMD ["/app"]
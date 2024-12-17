FROM golang:1.23.4 AS builder

WORKDIR /app
COPY go.* ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o /tmp/build/data-producer ./cmd

FROM gcr.io/distroless/static-debian12:nonroot

COPY --from=builder /tmp/build/data-producer /

EXPOSE 8080

CMD ["/data-producer"]

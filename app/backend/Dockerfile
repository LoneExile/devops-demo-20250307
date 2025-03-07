FROM golang:1.24-alpine AS builder

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download

COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /s3-lister

FROM alpine:3.16
RUN apk --no-cache add ca-certificates && \
    addgroup -S appgroup && \
    adduser -S appuser -G appgroup
WORKDIR /app
COPY --from=builder /s3-lister .
RUN chown -R appuser:appgroup /app
USER appuser
EXPOSE 8080
CMD ["./s3-lister"]

FROM alpine:latest

RUN apk add --no-cache curl && \
    curl -L https://github.com/jpillora/chisel/releases/download/v1.10.1/chisel_1.10.1_linux_amd64.gz | gunzip > /usr/local/bin/chisel && \
    chmod +x /usr/local/bin/chisel && \
    apk del curl

EXPOSE 10000

CMD ["/usr/local/bin/chisel", "server", "--port", "10000", "--reverse"]

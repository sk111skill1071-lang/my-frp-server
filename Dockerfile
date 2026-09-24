FROM alpine:latest
RUN apk add --no-cache wget tar
WORKDIR /app
RUN wget https://github.com && tar -xvf frp_0.61.0_linux_amd64.tar.gz && cp frp_0.61.0_linux_amd64/frps /app/frps && rm -rf frp_0.61.0_linux_amd64*
RUN echo "bindPort = 7000" > frps.toml
EXPOSE 7000
CMD ["./frps", "-c", "frps.toml"]

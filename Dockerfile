FROM fatedier/frp:v0.61.0
RUN echo "bindPort = 7000" > /etc/frp/frps.toml
EXPOSE 7000
CMD ["/usr/bin/frps", "-c", "/etc/frp/frps.toml"]

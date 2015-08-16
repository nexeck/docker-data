FROM alpine:edge

COPY forever.sh /usr/local/bin/

ENV DATA_DIR /data
RUN mkdir -p "$DATA_DIR"
VOLUME ["$DATA_DIR"]
CMD ["/usr/local/bin/forever.sh"]
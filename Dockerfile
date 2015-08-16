FROM alpine:edge

ENV DATA_DIR /data
RUN mkdir -p "$DATA_DIR"
VOLUME ["$DATA_DIR"]

COPY ./forever.sh /
RUN chmod +x /forever.sh
CMD ["/forever.sh"]
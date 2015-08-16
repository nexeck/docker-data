FROM busybox

ENV DATA_DIR /data
RUN mkdir -p "$DATA_DIR"
VOLUME ["$DATA_DIR"]

CMD ["true"]
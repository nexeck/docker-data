FROM busybox

RUN apk add --update bash && rm -rf /var/cache/apk/*

ENV DATA_DIR /data
RUN mkdir -p "$DATA_DIR"
VOLUME ["$DATA_DIR"]

CMD ["true"]
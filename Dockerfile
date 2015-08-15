FROM alpine:edge

RUN mkdir /data
VOLUME /data
CMD ["/bin/true"]
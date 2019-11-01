FROM alpine
RUN apk update && apk --no-cache add bash

FROM ubuntu
RUN apt-get install -y something \
        --no-install-recommends && \
        apt-get clean && \
        rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ["something"]
CMD ["-h"]

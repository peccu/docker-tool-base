FROM ubuntu
RUN apt-get update && apt-get upgrade -y
ARG PACKAGE
RUN apt-get install -y $PACKAGE \
        --no-install-recommends && \
        apt-get clean && \
        rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

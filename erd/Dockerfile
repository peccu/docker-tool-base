FROM haskell as build-env
WORKDIR /opt/server
RUN git clone https://github.com/BurntSushi/erd
RUN cd erd && stack setup && stack install

FROM phusion/baseimage
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y graphviz \
        --no-install-recommends && \
        apt-get clean && \
        rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
COPY --from=build-env /root/.local/bin/erd /usr/local/bin/erd

ENTRYPOINT ["erd"]
CMD ["-h"]

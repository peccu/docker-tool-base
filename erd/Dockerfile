FROM haskell as build-env
WORKDIR /opt/server
RUN git clone https://github.com/BurntSushi/erd
RUN cd erd && stack setup && stack install

FROM phusion/baseimage
RUN apt-get update
RUN apt-get install -y graphviz
RUN rm -rf /var/lib/apt/lists/*
COPY --from=build-env /root/.local/bin/erd /usr/local/bin/erd

ENTRYPOINT ["erd"]
CMD ["-h"]

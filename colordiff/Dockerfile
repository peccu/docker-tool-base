FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y colordiff \
        --no-install-recommends && \
        apt-get clean && \
        rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENTRYPOINT ["colordiff"]

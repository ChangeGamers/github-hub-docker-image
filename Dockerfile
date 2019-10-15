FROM debian:10-slim

RUN apt-get update && apt-get -y install wget git

RUN mkdir hub && \
    wget https://github.com/github/hub/releases/download/v2.12.8/hub-linux-amd64-2.12.8.tgz -O- | \
    tar xz --strip-components 1 --directory hub && \
    ./hub/install && rm -r hub

CMD /usr/local/bin/hub

FROM debian

ARG VERSION=0.16.0
ARG ARCH=amd64

# Download and install WriteFreely to /writefreely
RUN \
    apt update && \
    apt install -y openssl ca-certificates net-tools wget && \
    wget https://github.com/writefreely/writefreely/releases/download/v$VERSION/writefreely_${VERSION}_linux_${ARCH}.tar.gz -O writefreely.tar.gz && \
    tar -zxf writefreely.tar.gz && \
    rm -f writefreely.tar.gz && \
    apt clean && \
    apt remove -y wget

VOLUME [ "/data", "/writefreely/keys" ]
WORKDIR /writefreely

ADD scripts/entrypoint.sh entrypoint.sh

EXPOSE 8080
ENTRYPOINT [ "./entrypoint.sh" ]

FROM cirrusci/flutter:stable-web

RUN apk update && apk upgrade && \
    apk add --no-cache \
    bash \
    git \
    ca-certificates \
    curl \
    gcc \
    musl-dev \
    python \
    py-pip \
    py-setuptools \
    python2-dev \
    openssh

RUN apk del gcc musl-dev && rm -R -f /root/.cache

COPY files /

CMD ["/bin/bash"]
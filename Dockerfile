FROM cirrusci/flutter:stable-web

RUN sudo apt-get update \
    && sudo apt-get install -y --no-cache \
    bash \
    git \
    ca-certificates \
    curl \
    gcc \
    openssh
    && sudo rm -rf /var/lib/apt/lists/*
    
RUN flutter channel beta
RUN flutter upgrade
RUN flutter config --enable-web

COPY files /

CMD ["/bin/bash"]
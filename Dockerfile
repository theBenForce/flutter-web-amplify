FROM cirrusci/flutter:stable-web

RUN sudo apt-get update \
    && sudo apt-get install -y \
    git \
    ca-certificates \
    openssh
    
RUN flutter channel beta
RUN flutter upgrade
RUN flutter config --enable-web

COPY files /

CMD ["/bin/bash"]
